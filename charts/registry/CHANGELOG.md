# Changelog

## [1.0.2](https://github.com/anza-labs/charts/compare/registry-1.0.1...registry-v1.0.2) (2026-04-07)


### Miscellaneous Chores

* **deps:** update docker.io/library/registry docker tag to v3.1.0 ([#368](https://github.com/anza-labs/charts/issues/368)) ([1a7c0c9](https://github.com/anza-labs/charts/commit/1a7c0c98c791ede5c864b6442dd3a417e7775b94))

## [1.0.1](https://github.com/anza-labs/charts/compare/registry-1.0.0...registry-v1.0.1) (2026-03-19)


### Bug Fixes

* **main:** use `strategy` instead of `updateStrategy` in deployments ([#356](https://github.com/anza-labs/charts/issues/356)) ([e9ac474](https://github.com/anza-labs/charts/commit/e9ac4747a3e0f6bc9b5b62a73da0df7c2bf5b6a7))

## 1.0.0 (2026-03-18)


### Features

* add htpasswd auth ([da621e7](https://github.com/anza-labs/charts/commit/da621e7b3b9b8eda1ca5e805b6e8836f814d26ed))
* add pyoci chart ([4facd07](https://github.com/anza-labs/charts/commit/4facd07faee26a3de1378cf2028d60952d2126cc))
* add registry chart ([b8d1366](https://github.com/anza-labs/charts/commit/b8d13660ed61c55aed561b4e647232a553693ad1))
* add updateStrategy to multiple charts ([87ce31e](https://github.com/anza-labs/charts/commit/87ce31ef82f1553bf8bd74a1e9c294a56a0172dd))


### Bug Fixes

* failing e2e with htpasswd ([d364a6c](https://github.com/anza-labs/charts/commit/d364a6cd8dbf94a79f8b699e60415e65f41f3496))
* **registry:** set htpasswd as RO always ([9cc50f8](https://github.com/anza-labs/charts/commit/9cc50f8e7559736065e56bc5d8451fa512320d22))


### Miscellaneous Chores

* generate docs and schemas ([f2ad0de](https://github.com/anza-labs/charts/commit/f2ad0de519f6932484fd55ff647011942c4ac092))


### Tests

* add push n pull tests ([f2bc0dd](https://github.com/anza-labs/charts/commit/f2bc0dd56abaed423a797155be749f7f7efd8951))
* fix secret unittests ([0816670](https://github.com/anza-labs/charts/commit/08166701cfeee84d5591f7eb77d06eb20ce4b93d))
