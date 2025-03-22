# Get the currently used golang install path (in GOPATH/bin, unless GOBIN is set)
ifeq (,$(shell go env GOBIN))
GOBIN=$(shell go env GOPATH)/bin
else
GOBIN=$(shell go env GOBIN)
endif

CHART ?=

# Setting SHELL to bash allows bash commands to be executed by recipes.
# Options are set to exit when a recipe line exits non-zero or a piped command fails.
SHELL = /usr/bin/env bash -o pipefail
.SHELLFLAGS = -ec

.PHONY: all
all: backfill-all-app-versions generate-schemas generate-docs readme

##@ General

# The help target prints out all targets with their descriptions organized
# beneath their categories. The categories are represented by '##@' and the
# target descriptions by '##'. The awk command is responsible for reading the
# entire set of makefiles included in this invocation, looking for lines of the
# file as xyz: ## something, and then pretty-format the target and help. Then,
# if there's a line with ##@ something, that gets pretty-printed as a category.
# More info on the usage of ANSI control characters for terminal formatting:
# https://en.wikipedia.org/wiki/ANSI_escape_code#SGR_parameters
# More info on the awk command:
# http://linuxcommand.org/lc3_adv_awk.php

.PHONY: help
help: ## Display this help.
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Development

.PHONY: cluster
cluster: kind ctlptl
	@PATH=${LOCALBIN}:$(PATH) $(CTLPTL) apply -f hack/kind.yaml

.PHONY: cluster-reset
cluster-reset: kind ctlptl
	@PATH=${LOCALBIN}:$(PATH) $(CTLPTL) delete -f hack/kind.yaml

.PHONY: ci
ci: _ci _generate-schema _generate-docs readme

.PHONY: _ci
_ci:
	$(MAKE) _backfill-app-version CHART=${CHART}
	$(MAKE) _set-chart-version VERSION=${VERSION}

.PHONY: readme
readme:
	go run ./hack/readme

.PHONY: backfill-all-app-versions
backfill-all-app-versions: yq
	for dir in anza-labs/*; do $(MAKE) _backfill-app-version CHART="$$dir"; done

.PHONY: _backfill-app-version
_backfill-app-version: yq
	cd ${CHART}; ./.backfill.sh $(YQ)

.PHONY: _set-chart-version
_set-chart-version: yq
	cd ${CHART}; $(YQ) ".version = \"${VERSION}\"" './Chart.yaml' -i

.PHONY: generate-docs
generate-docs: helm-docs ## Run kube-linter on Kubernetes manifests.
	for dir in anza-labs/*; do $(MAKE) _generate-docs CHART="$$dir"; done

_generate-docs: helm-docs
	cd ${CHART}; $(HELM_DOCS) --badge-style=flat --template-files=README.md.gotpl

.PHONY: generate-schemas
generate-schemas: helm-values-schema-json ## Run kube-linter on Kubernetes manifests.
	for dir in anza-labs/*; do $(MAKE) _generate-schema CHART="$$dir"; done

.PHONY: _generate-schema
_generate-schema: helm-values-schema-json
	$(HELM_VALUES_SCHEMA_JSON) \
		-draft=7 \
		-indent=2 \
		-input=${CHART}/values.yaml \
		-output=${CHART}/values.schema.json \

.PHONY: lint-manifests
lint-manifests: kube-linter ## Run kube-linter on Kubernetes manifests.
	$(KUBE_LINTER) lint --config=.kube-linter.yaml ./anza-labs/**

.PHONY: diff
diff:
	git --no-pager diff --exit-code HEAD --

##@ Dependencies

## Location to install dependencies to
LOCALBIN ?= $(shell pwd)/bin
$(LOCALBIN):
	mkdir -p $(LOCALBIN)

## Tool Binaries
CTLPTL                  ?= $(LOCALBIN)/ctlptl
HELM_DOCS               ?= $(LOCALBIN)/helm-docs
HELM_VALUES_SCHEMA_JSON ?= $(LOCALBIN)/helm-values-schema-json
KIND                    ?= $(LOCALBIN)/kind
KUBE_LINTER             ?= $(LOCALBIN)/kube-linter
YQ                      ?= $(LOCALBIN)/yq

## Tool Versions
# renovate: datasource=github-tags depName=tilt-dev/ctlptl
CTLPTL_VERSION ?= v0.8.40

# renovate: datasource=github-tags depName=norwoodj/helm-docs
HELM_DOCS_VERSION ?= v1.14.2

# renovate: datasource=github-tags depName=losisin/helm-values-schema-json
HELM_VALUES_SCHEMA_JSON_VERSION ?= v1.8.0

# renovate: datasource=github-tags depName=kubernetes-sigs/kind
KIND_VERSION ?= v0.27.0

# renovate: datasource=github-tags depName=stackrox/kube-linter
KUBE_LINTER_VERSION ?= v0.7.2

# renovate: datasource=github-tags depName=mikefarah/yq
YQ_VERSION ?= v4.45.1

.PHONY: ctlptl
ctlptl: $(CTLPTL)-$(CTLPTL_VERSION) ## Download ctlptl locally if necessary.
$(CTLPTL)-$(CTLPTL_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(CTLPTL),github.com/tilt-dev/ctlptl/cmd/ctlptl,$(CTLPTL_VERSION))

.PHONY: helm-docs
helm-docs: $(HELM_DOCS)-$(HELM_DOCS_VERSION) ## Download helm-docs locally if necessary.
$(HELM_DOCS)-$(HELM_DOCS_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(HELM_DOCS),github.com/norwoodj/helm-docs/cmd/helm-docs,$(HELM_DOCS_VERSION))

.PHONY: helm-values-schema-json
helm-values-schema-json: $(HELM_VALUES_SCHEMA_JSON)-$(HELM_VALUES_SCHEMA_JSON_VERSION) ## Download helm-values-schema-json locally if necessary.
$(HELM_VALUES_SCHEMA_JSON)-$(HELM_VALUES_SCHEMA_JSON_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(HELM_VALUES_SCHEMA_JSON),github.com/losisin/helm-values-schema-json,$(HELM_VALUES_SCHEMA_JSON_VERSION))

.PHONY: kind
kind: $(KIND)-$(KIND_VERSION) ## Download kind locally if necessary.
$(KIND)-$(KIND_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(KIND),sigs.k8s.io/kind,$(KIND_VERSION))

.PHONY: kube-linter
kube-linter: $(KUBE_LINTER)-$(KUBE_LINTER_VERSION) ## Download kube-linter locally if necessary.
$(KUBE_LINTER)-$(KUBE_LINTER_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(KUBE_LINTER),golang.stackrox.io/kube-linter/cmd/kube-linter,$(KUBE_LINTER_VERSION))

.PHONY: yq
yq: $(YQ)-$(YQ_VERSION) ## Download yq locally if necessary.
$(YQ)-$(YQ_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(YQ),github.com/mikefarah/yq/v4,$(YQ_VERSION))

# go-install-tool will 'go install' any package with custom target and name of binary, if it doesn't exist
# $1 - target path with name of binary
# $2 - package url which can be installed
# $3 - specific version of package
define go-install-tool
@[ -f "$(1)-$(3)" ] || { \
set -e; \
package=$(2)@$(3) ;\
echo "Downloading $${package}" ;\
rm -f $(1) || true ;\
GOBIN=$(LOCALBIN) go install $${package} ;\
mv $(1) $(1)-$(3) ;\
} ;\
ln -sf $(1)-$(3) $(1)
endef
