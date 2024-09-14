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
all: backfill-app-version generate-schemas generate-docs

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

.PHONY: backfill-app-versions
backfill-app-version: yq
	for dir in anza-labs/*; do $(MAKE) _backfill-app-version CHART="$$dir"; done

.PHONY: _backfill-app-version
_backfill-app-version:
	cd ${CHART}; ./.backfill.sh $(YQ)

.PHONY: generate-docs
generate-docs: helm-docs ## Run kube-linter on Kubernetes manifests.
	$(HELM_DOCS) --badge-style=flat

.PHONY: generate-schemas
generate-schemas: helm-values-schema-json ## Run kube-linter on Kubernetes manifests.
	for dir in anza-labs/*; do $(MAKE) _generate-schema CHART="$$dir"; done

.PHONY: _generate-schema
_generate-schema:
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
HELM_DOCS ?= $(LOCALBIN)/helm-docs
HELM_VALUES_SCHEMA_JSON ?= $(LOCALBIN)/helm-values-schema-json
KUBE_LINTER ?= $(LOCALBIN)/kube-linter
YQ ?= $(LOCALBIN)/yq

## Tool Versions
HELM_DOCS_VERSION ?= $(shell grep 'github.com/norwoodj/helm-docs ' ./go.mod | cut -d ' ' -f 2)
HELM_VALUES_SCHEMA_JSON_VERSION ?= $(shell grep 'github.com/losisin/helm-values-schema-json ' ./go.mod | cut -d ' ' -f 2)
KUBE_LINTER_VERSION ?= $(shell grep 'golang.stackrox.io/kube-linter ' ./go.mod | cut -d ' ' -f 2)
YQ_VERSION ?= $(shell grep 'github.com/mikefarah/yq/v4 ' ./go.mod | cut -d ' ' -f 2)

.PHONY: helm-docs
helm-docs: $(HELM_DOCS)$(HELM_DOCS_VERSION) ## Download helm-docs locally if necessary.
$(HELM_DOCS)$(HELM_DOCS_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(HELM_DOCS),github.com/norwoodj/helm-docs/cmd/helm-docs,$(HELM_DOCS_VERSION))

.PHONY: helm-values-schema-json
helm-values-schema-json: $(HELM_VALUES_SCHEMA_JSON)$(HELM_VALUES_SCHEMA_JSON_VERSION) ## Download helm-values-schema-json locally if necessary.
$(HELM_VALUES_SCHEMA_JSON)$(HELM_VALUES_SCHEMA_JSON_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(HELM_VALUES_SCHEMA_JSON),github.com/losisin/helm-values-schema-json,$(HELM_VALUES_SCHEMA_JSON_VERSION))

.PHONY: kube-linter
kube-linter: $(KUBE_LINTER)$(KUBE_LINTER_VERSION) ## Download kube-linter locally if necessary.
$(KUBE_LINTER)$(KUBE_LINTER_VERSION): $(LOCALBIN)
	$(call go-install-tool,$(KUBE_LINTER),golang.stackrox.io/kube-linter/cmd/kube-linter,$(KUBE_LINTER_VERSION))

.PHONY: yq
yq: $(YQ)$(YQ_VERSION) ## Download yq locally if necessary.
$(YQ)$(YQ_VERSION): $(LOCALBIN)
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
