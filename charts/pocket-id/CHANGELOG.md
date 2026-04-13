# Changelog

## [3.0.0](https://github.com/anza-labs/charts/compare/pocket-id-v2.1.0...pocket-id-v3.0.0) (2026-04-13)


### ⚠ BREAKING CHANGES

* add note to PocketID chart about v2 migration
* **pocket-id:** prepare for v1 pocket-id release ([#124](https://github.com/anza-labs/charts/issues/124))

### Features

* add note to PocketID chart about v2 migration ([50f0a90](https://github.com/anza-labs/charts/commit/50f0a903e0be81479cfa5f830a07d2869548f1c8))
* bump pyoci ([8a3203e](https://github.com/anza-labs/charts/commit/8a3203eb4218baac0f8e03511d587a8facdf6293))
* **pocket-id:** add analytics control ([#126](https://github.com/anza-labs/charts/issues/126)) ([a413213](https://github.com/anza-labs/charts/commit/a413213399594498a9dc10c678b750b2e2a0d757))
* **pocket-id:** add hostPath support for persistence ([#385](https://github.com/anza-labs/charts/issues/385)) ([0725e2e](https://github.com/anza-labs/charts/commit/0725e2ec9279fad14f8f47093e8fbc33bbd0f83c))
* **pocket-id:** add local-ipv6 configuration ([#162](https://github.com/anza-labs/charts/issues/162)) ([a6ad7b6](https://github.com/anza-labs/charts/commit/a6ad7b6c902cfd3f79d03e601795bec6ac0b4bc5))
* **pocket-id:** add otel configuration ([#163](https://github.com/anza-labs/charts/issues/163)) ([6ae1358](https://github.com/anza-labs/charts/commit/6ae1358b3b0c52e323043aa69d7dac8127fe9d86))
* **pocket-id:** add trust proxy configuration options ([#383](https://github.com/anza-labs/charts/issues/383)) ([9a36e9d](https://github.com/anza-labs/charts/commit/9a36e9d63e2db325c80583b6243a6e5513609a64))
* **pocket-id:** allow host overriding ([bd1eb35](https://github.com/anza-labs/charts/commit/bd1eb35840bef3980752c870420c4c58807af518))
* **pocket-id:** allow postgresql as connection string protocol ([#168](https://github.com/anza-labs/charts/issues/168)) ([75c494f](https://github.com/anza-labs/charts/commit/75c494f80fcb224423862a4c8d1af5dae291b873))
* **pocket-id:** implement basic v2 chart ([#350](https://github.com/anza-labs/charts/issues/350)) ([bb34d3f](https://github.com/anza-labs/charts/commit/bb34d3f7eccbe50917fbf4cf80b3f02fa4a8882e))
* **pocket-id:** prepare for v1 pocket-id release ([#124](https://github.com/anza-labs/charts/issues/124)) ([b400d09](https://github.com/anza-labs/charts/commit/b400d09e66a4d8b07f988bd56f33494ee1fe8ece))
* **pocket-id:** set only selector labels on volumes ([#257](https://github.com/anza-labs/charts/issues/257)) ([734a8e0](https://github.com/anza-labs/charts/commit/734a8e08905772670014a816c46e887ed152a68c))
* **templates:** add more probe configurations ([#189](https://github.com/anza-labs/charts/issues/189)) ([17da6ca](https://github.com/anza-labs/charts/commit/17da6ca71c1a754fdb15d3db40da5a856a5ca93e))


### Bug Fixes

* icons formatting ([f6d11b2](https://github.com/anza-labs/charts/commit/f6d11b2f5c4258f8f5d5fb458bfb2a79f7b15e39))
* **pocket-id:** existingClaim functionality and `PUBLIC_UI_CONFIG_DISABLED` value ([#106](https://github.com/anza-labs/charts/issues/106)) ([dba6f57](https://github.com/anza-labs/charts/commit/dba6f5774dbf512f5ee8a5540b2f0530b0111eb7))
* **pocket-id:** invalid db path ([e04f414](https://github.com/anza-labs/charts/commit/e04f414ede36566312b7c13bb8c026277cdad52e))
* **pocket-id:** invalid db path ([e79fa1d](https://github.com/anza-labs/charts/commit/e79fa1dfe5eb6b34a364f9352c7a331e5090da88))
* **pocket-id:** mount paths ([#153](https://github.com/anza-labs/charts/issues/153)) ([79e71b2](https://github.com/anza-labs/charts/commit/79e71b2a419d82db5569e2385e08305b6206f8aa))
* **pocket-id:** one-time access email settings ([#122](https://github.com/anza-labs/charts/issues/122)) ([fc5b0fc](https://github.com/anza-labs/charts/commit/fc5b0fc248cb0b7e6c5601ebfb93a7934d2870bf))


### Miscellaneous Chores

* add logo to charts ([b6225a5](https://github.com/anza-labs/charts/commit/b6225a5bad1be9f597fe5cd22553505af9ad0b18))
* add metadata ([#113](https://github.com/anza-labs/charts/issues/113)) ([2146f51](https://github.com/anza-labs/charts/commit/2146f512988e61e7e06863fcea6cb98ec2e125e2))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.10 ([#358](https://github.com/anza-labs/charts/issues/358)) ([c0880b9](https://github.com/anza-labs/charts/commit/c0880b9ecc734a0d81830e9dce2b1b7a03b3174a))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.11 ([#378](https://github.com/anza-labs/charts/issues/378)) ([cfdf92d](https://github.com/anza-labs/charts/commit/cfdf92dbe2e7f1e6587ade8bc5e038507a4cdf6c))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.2 ([#248](https://github.com/anza-labs/charts/issues/248)) ([cbc9255](https://github.com/anza-labs/charts/commit/cbc9255bd1492d62666509a4320534779bde1225))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.5 ([#293](https://github.com/anza-labs/charts/issues/293)) ([b3f4b51](https://github.com/anza-labs/charts/commit/b3f4b510de822e41dcd9886fab206fb5442fc45b))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.6 ([#315](https://github.com/anza-labs/charts/issues/315)) ([92c5ba0](https://github.com/anza-labs/charts/commit/92c5ba09a700cff6a160a9c5523e5f7c0c5bdde1))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.8 ([#328](https://github.com/anza-labs/charts/issues/328)) ([c4305ed](https://github.com/anza-labs/charts/commit/c4305ed6a41b2e80d0a3cab4bbaf0b6837d90b7b))
* **deps:** update docker.io/litestream/litestream docker tag to v0.5.9 ([#338](https://github.com/anza-labs/charts/issues/338)) ([1b0152d](https://github.com/anza-labs/charts/commit/1b0152d87a7f6b9a4ce2414fbbedc745cb5416eb))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v0.53.0 ([#97](https://github.com/anza-labs/charts/issues/97)) ([c7e1a53](https://github.com/anza-labs/charts/commit/c7e1a533500971baea26ba5cafd63eabc6ee8fd7))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1 ([#120](https://github.com/anza-labs/charts/issues/120)) ([3ba7021](https://github.com/anza-labs/charts/commit/3ba7021c3f483b62ed70073175a68882933ab191))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.1.0 ([#127](https://github.com/anza-labs/charts/issues/127)) ([b7c0f5d](https://github.com/anza-labs/charts/commit/b7c0f5dc67ed3231133eba04746545dbc7d41356))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.10.0 ([#218](https://github.com/anza-labs/charts/issues/218)) ([e45cb2a](https://github.com/anza-labs/charts/commit/e45cb2aba31fbf3013503921d623271a40e6a15c))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.11.1 ([#239](https://github.com/anza-labs/charts/issues/239)) ([a2a2135](https://github.com/anza-labs/charts/commit/a2a2135b65aa1dd18b593542f718428fc03e3930))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.13.1 ([#249](https://github.com/anza-labs/charts/issues/249)) ([2d850e8](https://github.com/anza-labs/charts/commit/2d850e828d006777a9c020b20afbee75458212e2))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.14.0 ([#261](https://github.com/anza-labs/charts/issues/261)) ([07111a9](https://github.com/anza-labs/charts/commit/07111a9ef2148474f7c280c22bd015140a62cc97))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.14.2 ([#265](https://github.com/anza-labs/charts/issues/265)) ([2b2e0fc](https://github.com/anza-labs/charts/commit/2b2e0fc775bb4846386418b9a08be984461be5d9))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.15.0 ([#272](https://github.com/anza-labs/charts/issues/272)) ([8e0f7d4](https://github.com/anza-labs/charts/commit/8e0f7d4f48721b47ae619abf3f9794101c610ba8))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.16.0 ([#287](https://github.com/anza-labs/charts/issues/287)) ([3b4d260](https://github.com/anza-labs/charts/commit/3b4d260cff4da2e7ee57f18fbe00c315a00ca884))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.2.0 ([#135](https://github.com/anza-labs/charts/issues/135)) ([195b28f](https://github.com/anza-labs/charts/commit/195b28f891faf8bd925aedb9c102b62a457de543))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.3.1 ([#143](https://github.com/anza-labs/charts/issues/143)) ([67b8b82](https://github.com/anza-labs/charts/commit/67b8b82eee5de1708c8f492aa747b0a3a1f060ea))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.4.1 ([#161](https://github.com/anza-labs/charts/issues/161)) ([c5efac7](https://github.com/anza-labs/charts/commit/c5efac76469e315263357c34e387722eff3b214e))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.5.0 ([#166](https://github.com/anza-labs/charts/issues/166)) ([5fc4a31](https://github.com/anza-labs/charts/commit/5fc4a31d0468dd8ca41bcbb069e5444e942e945a))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.1 ([#170](https://github.com/anza-labs/charts/issues/170)) ([08c323f](https://github.com/anza-labs/charts/commit/08c323fd3edf553162c1412efa5fb08762dc6aec))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.2 ([#177](https://github.com/anza-labs/charts/issues/177)) ([ccd4088](https://github.com/anza-labs/charts/commit/ccd40887a2c81139de12a05e165016315c37ec74))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.4 ([#184](https://github.com/anza-labs/charts/issues/184)) ([b8f688b](https://github.com/anza-labs/charts/commit/b8f688bfaded17fb4382e514ef2832123b922167))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.7.0 ([#200](https://github.com/anza-labs/charts/issues/200)) ([d4a4e01](https://github.com/anza-labs/charts/commit/d4a4e0168e29385448e6e0bd9bcf4f7a37e64072))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.8.1 ([#210](https://github.com/anza-labs/charts/issues/210)) ([3aa648f](https://github.com/anza-labs/charts/commit/3aa648f93f6a01a9c7d27118c1a7477a19ace719))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.9.0 ([#211](https://github.com/anza-labs/charts/issues/211)) ([95f4de0](https://github.com/anza-labs/charts/commit/95f4de0605f590c04361048f1d10dd2edb85d57b))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.9.1 ([#212](https://github.com/anza-labs/charts/issues/212)) ([0256288](https://github.com/anza-labs/charts/commit/02562887f3b732d48678c2deef7ba39d66efa460))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v2.5.0 ([#363](https://github.com/anza-labs/charts/issues/363)) ([240c284](https://github.com/anza-labs/charts/commit/240c284d4f4526d4441a124fe1c44be66ed2fa1d))
* **main:** release lubelogger 1.1.1 ([#191](https://github.com/anza-labs/charts/issues/191)) ([3e72dcc](https://github.com/anza-labs/charts/commit/3e72dccb23a4b1da9011d5c6eed5909f582834f6))
* **main:** release pocket-id 1.0.0 ([#110](https://github.com/anza-labs/charts/issues/110)) ([d3ef273](https://github.com/anza-labs/charts/commit/d3ef2734cbaaa4e2b63ed7cb646ace4d3e9ba361))
* **main:** release pocket-id 1.1.0 ([#128](https://github.com/anza-labs/charts/issues/128)) ([e69df86](https://github.com/anza-labs/charts/commit/e69df861d5a6fb7a4f15d4d95843fbb9fa52831c))
* **main:** release pocket-id 1.1.1 ([#129](https://github.com/anza-labs/charts/issues/129)) ([61c07b1](https://github.com/anza-labs/charts/commit/61c07b1b75ac2c09946093f4f6e27f05c75c034a))
* **main:** release pocket-id 1.1.2 ([#130](https://github.com/anza-labs/charts/issues/130)) ([70ae708](https://github.com/anza-labs/charts/commit/70ae708619455b73edfc651397988525210d2d68))
* **main:** release pocket-id 1.1.3 ([#131](https://github.com/anza-labs/charts/issues/131)) ([02a1319](https://github.com/anza-labs/charts/commit/02a13191ce6dd812af199cd634d4c70a92a3b85b))
* **main:** release pocket-id 1.1.4 ([#146](https://github.com/anza-labs/charts/issues/146)) ([03c1598](https://github.com/anza-labs/charts/commit/03c1598d5590292d73f5e6b81c5559f674778040))
* **main:** release pocket-id 1.1.5 ([#147](https://github.com/anza-labs/charts/issues/147)) ([37db8bb](https://github.com/anza-labs/charts/commit/37db8bbc5a8006120e53cf83036242de0eb2d1ab))
* **main:** release pocket-id 1.2.0 ([#155](https://github.com/anza-labs/charts/issues/155)) ([bfccfc5](https://github.com/anza-labs/charts/commit/bfccfc58b5423c87797dde917d3279a086830d84))
* **main:** release pocket-id 1.3.0 ([#164](https://github.com/anza-labs/charts/issues/164)) ([8f22ca1](https://github.com/anza-labs/charts/commit/8f22ca1f66c1ab53e0b4e15ec22d721fbd29586e))
* **main:** release pocket-id 1.3.1 ([#165](https://github.com/anza-labs/charts/issues/165)) ([ddf8028](https://github.com/anza-labs/charts/commit/ddf802845454b63eb46187c68644a8f5d6063d72))
* **main:** release pocket-id 1.4.0 ([#169](https://github.com/anza-labs/charts/issues/169)) ([1d7c7d2](https://github.com/anza-labs/charts/commit/1d7c7d2f0b18a0b283d900b74ba72543fa8e2912))
* **main:** release pocket-id 1.4.1 ([#173](https://github.com/anza-labs/charts/issues/173)) ([fbb87bb](https://github.com/anza-labs/charts/commit/fbb87bb4ae666492aa1d5311cb5858c36f1fc504))
* **main:** release pocket-id 1.4.2 ([#174](https://github.com/anza-labs/charts/issues/174)) ([d627c21](https://github.com/anza-labs/charts/commit/d627c2167022ff25609b146a0d8df1e4a7267a28))
* **main:** release pocket-id 1.4.3 ([#181](https://github.com/anza-labs/charts/issues/181)) ([0d3fd6f](https://github.com/anza-labs/charts/commit/0d3fd6fe6970c4e5cb9a6db27ebc384e4b481de1))
* **main:** release pocket-id 1.5.0 ([#187](https://github.com/anza-labs/charts/issues/187)) ([fe40226](https://github.com/anza-labs/charts/commit/fe40226bc6a875ca63c332cbea6e3de6df6f33d2))
* **main:** release pocket-id 1.5.1 ([#192](https://github.com/anza-labs/charts/issues/192)) ([c200d52](https://github.com/anza-labs/charts/commit/c200d52293559aa6d982d73114f157e88222b8e6))
* **main:** release pocket-id 1.5.2 ([#195](https://github.com/anza-labs/charts/issues/195)) ([df4d926](https://github.com/anza-labs/charts/commit/df4d92633e279896fb8093cae86084b99519cb08))
* **main:** release pocket-id 1.5.3 ([#202](https://github.com/anza-labs/charts/issues/202)) ([6ea8182](https://github.com/anza-labs/charts/commit/6ea818256f52c0e4de5b420d9c14b41ebb6dfd9c))
* **main:** release pocket-id 1.5.4 ([#213](https://github.com/anza-labs/charts/issues/213)) ([eefce72](https://github.com/anza-labs/charts/commit/eefce72d4d0d98a660cfa807773ac2b2bd536656))
* **main:** release pocket-id 1.5.5 ([#214](https://github.com/anza-labs/charts/issues/214)) ([6cb574c](https://github.com/anza-labs/charts/commit/6cb574ccfbf525477c92778ba1c2f157f416a655))
* **main:** release pocket-id 1.5.6 ([#241](https://github.com/anza-labs/charts/issues/241)) ([1ea387f](https://github.com/anza-labs/charts/commit/1ea387ff93dd45dd6db57a620266219c2ec5c4f0))
* **main:** release pocket-id 1.6.0 ([#246](https://github.com/anza-labs/charts/issues/246)) ([a1ee296](https://github.com/anza-labs/charts/commit/a1ee296c384b2ae5c2d2516577970f0dd953c617))
* **main:** release pocket-id 1.6.1 ([#251](https://github.com/anza-labs/charts/issues/251)) ([4abf58f](https://github.com/anza-labs/charts/commit/4abf58f65d85b53120434f420b761f46c76dcf5c))
* **main:** release pocket-id 1.7.0 ([#259](https://github.com/anza-labs/charts/issues/259)) ([85b40d9](https://github.com/anza-labs/charts/commit/85b40d9776edf2348a080559df6aee89ad62fe4c))
* **main:** release pocket-id 1.7.1 ([#262](https://github.com/anza-labs/charts/issues/262)) ([0e3219b](https://github.com/anza-labs/charts/commit/0e3219bb5d09d813dcdbf4df227d150a0c412f83))
* **main:** release pocket-id 1.7.2 ([#266](https://github.com/anza-labs/charts/issues/266)) ([c7a5330](https://github.com/anza-labs/charts/commit/c7a53303c5c91def5a3b47b2bb74930b65a0b13d))
* **main:** release pocket-id 1.7.3 ([#310](https://github.com/anza-labs/charts/issues/310)) ([e258e72](https://github.com/anza-labs/charts/commit/e258e721278b069e50359bc21f774b36181d2224))
* **main:** release pocket-id 1.7.4 ([#312](https://github.com/anza-labs/charts/issues/312)) ([61a1862](https://github.com/anza-labs/charts/commit/61a1862c8293034edc9e6042afc4ef84bdcba67b))
* **main:** release pocket-id 1.7.5 ([#336](https://github.com/anza-labs/charts/issues/336)) ([de08537](https://github.com/anza-labs/charts/commit/de0853702b1933089eb26e09d127af137028675a))
* **main:** release pocket-id 1.7.6 ([#340](https://github.com/anza-labs/charts/issues/340)) ([de54765](https://github.com/anza-labs/charts/commit/de54765c4b8bf1941cff1dfdf428e09696ad8773))
* **main:** release pocket-id 2.0.0 ([#353](https://github.com/anza-labs/charts/issues/353)) ([1d4eaf4](https://github.com/anza-labs/charts/commit/1d4eaf4bbcd53aaffea5e044bd6497f412d3d271))
* **main:** release pocket-id 2.0.1 ([#369](https://github.com/anza-labs/charts/issues/369)) ([033a503](https://github.com/anza-labs/charts/commit/033a503ba983d2372065b73a563108d6f654be1d))
* **main:** release pocket-id 2.0.2 ([#371](https://github.com/anza-labs/charts/issues/371)) ([1763519](https://github.com/anza-labs/charts/commit/17635198c9fd5a622cd4f101f0227efb54c862db))
* **main:** release pocket-id 2.0.3 ([#374](https://github.com/anza-labs/charts/issues/374)) ([5ff3544](https://github.com/anza-labs/charts/commit/5ff35442a4310adeb21c41778b44eae99c49b5c2))
* **main:** release pocket-id 2.1.0 ([#382](https://github.com/anza-labs/charts/issues/382)) ([fee8c73](https://github.com/anza-labs/charts/commit/fee8c73ff77ab01ed8b3b990fd446d618e0101d3))
* **multi:** generated new value schemas ([5f4642a](https://github.com/anza-labs/charts/commit/5f4642a315a0785f5ce34d72f9680fb02a387204))
* **pocket-id:** prepare new pocket-id release ([#123](https://github.com/anza-labs/charts/issues/123)) ([276edf6](https://github.com/anza-labs/charts/commit/276edf667c252143086e3b1eacd7f8e2eab27ebc))


### Documentation

* describe contributing process ([da07b56](https://github.com/anza-labs/charts/commit/da07b561abfeb2d3531181610b22d7f42b3c0557))


### Tests

* **pocket-id:** add e2e tests to pocket-id ([#115](https://github.com/anza-labs/charts/issues/115)) ([8890485](https://github.com/anza-labs/charts/commit/8890485279ae660fd823b818c37255c612fcbf3b))
* **pocket-id:** added helm unittest for pocket-id ([#111](https://github.com/anza-labs/charts/issues/111)) ([8a4cd1d](https://github.com/anza-labs/charts/commit/8a4cd1d9ea6420e1f7c18e938994aef7256ff949))
* **pocket-id:** secret unit tests ([c11a6ba](https://github.com/anza-labs/charts/commit/c11a6ba852a62163ea06810cb000d58d913f4ccd))


### Continuous Integration

* move to manual change detection ([788d8d2](https://github.com/anza-labs/charts/commit/788d8d231cb1d069d68f829259bebe9693c47c3d))

## [2.1.0](https://github.com/anza-labs/charts/compare/pocket-id-2.0.3...pocket-id-v2.1.0) (2026-04-13)


### Features

* **pocket-id:** add hostPath support for persistence ([#385](https://github.com/anza-labs/charts/issues/385)) ([0725e2e](https://github.com/anza-labs/charts/commit/0725e2ec9279fad14f8f47093e8fbc33bbd0f83c))
* **pocket-id:** add trust proxy configuration options ([#383](https://github.com/anza-labs/charts/issues/383)) ([9a36e9d](https://github.com/anza-labs/charts/commit/9a36e9d63e2db325c80583b6243a6e5513609a64))

## [2.0.3](https://github.com/anza-labs/charts/compare/pocket-id-2.0.2...pocket-id-v2.0.3) (2026-04-10)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.11 ([#378](https://github.com/anza-labs/charts/issues/378)) ([cfdf92d](https://github.com/anza-labs/charts/commit/cfdf92dbe2e7f1e6587ade8bc5e038507a4cdf6c))

## [2.0.2](https://github.com/anza-labs/charts/compare/pocket-id-2.0.1...pocket-id-v2.0.2) (2026-04-07)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.10 ([#358](https://github.com/anza-labs/charts/issues/358)) ([c0880b9](https://github.com/anza-labs/charts/commit/c0880b9ecc734a0d81830e9dce2b1b7a03b3174a))

## [2.0.1](https://github.com/anza-labs/charts/compare/pocket-id-2.0.0...pocket-id-v2.0.1) (2026-04-07)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v2.5.0 ([#363](https://github.com/anza-labs/charts/issues/363)) ([240c284](https://github.com/anza-labs/charts/commit/240c284d4f4526d4441a124fe1c44be66ed2fa1d))

## [2.0.0](https://github.com/anza-labs/charts/compare/pocket-id-1.7.6...pocket-id-v2.0.0) (2026-03-18)


### ⚠ BREAKING CHANGES

* add note to PocketID chart about v2 migration

### Features

* add note to PocketID chart about v2 migration ([50f0a90](https://github.com/anza-labs/charts/commit/50f0a903e0be81479cfa5f830a07d2869548f1c8))
* **pocket-id:** implement basic v2 chart ([#350](https://github.com/anza-labs/charts/issues/350)) ([bb34d3f](https://github.com/anza-labs/charts/commit/bb34d3f7eccbe50917fbf4cf80b3f02fa4a8882e))

## [1.7.6](https://github.com/anza-labs/charts/compare/pocket-id-1.7.5...pocket-id-v1.7.6) (2026-02-24)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.9 ([#338](https://github.com/anza-labs/charts/issues/338)) ([1b0152d](https://github.com/anza-labs/charts/commit/1b0152d87a7f6b9a4ce2414fbbedc745cb5416eb))

## [1.7.5](https://github.com/anza-labs/charts/compare/pocket-id-1.7.4...pocket-id-v1.7.5) (2026-02-14)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.8 ([#328](https://github.com/anza-labs/charts/issues/328)) ([c4305ed](https://github.com/anza-labs/charts/commit/c4305ed6a41b2e80d0a3cab4bbaf0b6837d90b7b))

## [1.7.4](https://github.com/anza-labs/charts/compare/pocket-id-1.7.3...pocket-id-v1.7.4) (2026-01-26)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.6 ([#315](https://github.com/anza-labs/charts/issues/315)) ([92c5ba0](https://github.com/anza-labs/charts/commit/92c5ba09a700cff6a160a9c5523e5f7c0c5bdde1))

## [1.7.3](https://github.com/anza-labs/charts/compare/pocket-id-1.7.2...pocket-id-v1.7.3) (2026-01-06)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.5 ([#293](https://github.com/anza-labs/charts/issues/293)) ([b3f4b51](https://github.com/anza-labs/charts/commit/b3f4b510de822e41dcd9886fab206fb5442fc45b))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.16.0 ([#287](https://github.com/anza-labs/charts/issues/287)) ([3b4d260](https://github.com/anza-labs/charts/commit/3b4d260cff4da2e7ee57f18fbe00c315a00ca884))

## [1.7.2](https://github.com/anza-labs/charts/compare/pocket-id-1.7.1...pocket-id-v1.7.2) (2025-11-12)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.15.0 ([#272](https://github.com/anza-labs/charts/issues/272)) ([8e0f7d4](https://github.com/anza-labs/charts/commit/8e0f7d4f48721b47ae619abf3f9794101c610ba8))

## [1.7.1](https://github.com/anza-labs/charts/compare/pocket-id-1.7.0...pocket-id-v1.7.1) (2025-10-30)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.14.0 ([#261](https://github.com/anza-labs/charts/issues/261)) ([07111a9](https://github.com/anza-labs/charts/commit/07111a9ef2148474f7c280c22bd015140a62cc97))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.14.2 ([#265](https://github.com/anza-labs/charts/issues/265)) ([2b2e0fc](https://github.com/anza-labs/charts/commit/2b2e0fc775bb4846386418b9a08be984461be5d9))

## [1.7.0](https://github.com/anza-labs/charts/compare/pocket-id-1.6.1...pocket-id-v1.7.0) (2025-10-22)


### Features

* **pocket-id:** set only selector labels on volumes ([#257](https://github.com/anza-labs/charts/issues/257)) ([734a8e0](https://github.com/anza-labs/charts/commit/734a8e08905772670014a816c46e887ed152a68c))

## [1.6.1](https://github.com/anza-labs/charts/compare/pocket-id-1.6.0...pocket-id-v1.6.1) (2025-10-16)


### Miscellaneous Chores

* **deps:** update docker.io/litestream/litestream docker tag to v0.5.2 ([#248](https://github.com/anza-labs/charts/issues/248)) ([cbc9255](https://github.com/anza-labs/charts/commit/cbc9255bd1492d62666509a4320534779bde1225))

## [1.6.0](https://github.com/anza-labs/charts/compare/pocket-id-1.5.6...pocket-id-v1.6.0) (2025-10-09)


### Features

* bump pyoci ([8a3203e](https://github.com/anza-labs/charts/commit/8a3203eb4218baac0f8e03511d587a8facdf6293))


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.13.1 ([#249](https://github.com/anza-labs/charts/issues/249)) ([2d850e8](https://github.com/anza-labs/charts/commit/2d850e828d006777a9c020b20afbee75458212e2))

## [1.5.6](https://github.com/anza-labs/charts/compare/pocket-id-1.5.5...pocket-id-v1.5.6) (2025-09-19)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.11.1 ([#239](https://github.com/anza-labs/charts/issues/239)) ([a2a2135](https://github.com/anza-labs/charts/commit/a2a2135b65aa1dd18b593542f718428fc03e3930))

## [1.5.5](https://github.com/anza-labs/charts/compare/pocket-id-1.5.4...pocket-id-v1.5.5) (2025-08-28)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.10.0 ([#218](https://github.com/anza-labs/charts/issues/218)) ([e45cb2a](https://github.com/anza-labs/charts/commit/e45cb2aba31fbf3013503921d623271a40e6a15c))

## [1.5.4](https://github.com/anza-labs/charts/compare/pocket-id-1.5.3...pocket-id-v1.5.4) (2025-08-25)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.9.1 ([#212](https://github.com/anza-labs/charts/issues/212)) ([0256288](https://github.com/anza-labs/charts/commit/02562887f3b732d48678c2deef7ba39d66efa460))

## [1.5.3](https://github.com/anza-labs/charts/compare/pocket-id-1.5.2...pocket-id-v1.5.3) (2025-08-24)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.8.1 ([#210](https://github.com/anza-labs/charts/issues/210)) ([3aa648f](https://github.com/anza-labs/charts/commit/3aa648f93f6a01a9c7d27118c1a7477a19ace719))
* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.9.0 ([#211](https://github.com/anza-labs/charts/issues/211)) ([95f4de0](https://github.com/anza-labs/charts/commit/95f4de0605f590c04361048f1d10dd2edb85d57b))

## [1.5.2](https://github.com/anza-labs/charts/compare/pocket-id-1.5.1...pocket-id-v1.5.2) (2025-08-11)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.7.0 ([#200](https://github.com/anza-labs/charts/issues/200)) ([d4a4e01](https://github.com/anza-labs/charts/commit/d4a4e0168e29385448e6e0bd9bcf4f7a37e64072))

## [1.5.1](https://github.com/anza-labs/charts/compare/pocket-id-1.5.0...pocket-id-v1.5.1) (2025-08-04)


### Bug Fixes

* icons formatting ([f6d11b2](https://github.com/anza-labs/charts/commit/f6d11b2f5c4258f8f5d5fb458bfb2a79f7b15e39))


### Miscellaneous Chores

* add logo to charts ([b6225a5](https://github.com/anza-labs/charts/commit/b6225a5bad1be9f597fe5cd22553505af9ad0b18))
* **main:** release lubelogger 1.1.1 ([#191](https://github.com/anza-labs/charts/issues/191)) ([3e72dcc](https://github.com/anza-labs/charts/commit/3e72dccb23a4b1da9011d5c6eed5909f582834f6))

## [1.5.0](https://github.com/anza-labs/charts/compare/pocket-id-1.4.3...pocket-id-v1.5.0) (2025-07-28)


### Features

* **templates:** add more probe configurations ([#189](https://github.com/anza-labs/charts/issues/189)) ([17da6ca](https://github.com/anza-labs/charts/commit/17da6ca71c1a754fdb15d3db40da5a856a5ca93e))

## [1.4.3](https://github.com/anza-labs/charts/compare/pocket-id-1.4.2...pocket-id-v1.4.3) (2025-07-23)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.4 ([#184](https://github.com/anza-labs/charts/issues/184)) ([b8f688b](https://github.com/anza-labs/charts/commit/b8f688bfaded17fb4382e514ef2832123b922167))

## [1.4.2](https://github.com/anza-labs/charts/compare/pocket-id-1.4.1...pocket-id-v1.4.2) (2025-07-14)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.2 ([#177](https://github.com/anza-labs/charts/issues/177)) ([ccd4088](https://github.com/anza-labs/charts/commit/ccd40887a2c81139de12a05e165016315c37ec74))

## [1.4.1](https://github.com/anza-labs/charts/compare/pocket-id-1.4.0...pocket-id-v1.4.1) (2025-07-09)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.6.1 ([#170](https://github.com/anza-labs/charts/issues/170)) ([08c323f](https://github.com/anza-labs/charts/commit/08c323fd3edf553162c1412efa5fb08762dc6aec))

## [1.4.0](https://github.com/anza-labs/charts/compare/pocket-id-1.3.1...pocket-id-v1.4.0) (2025-07-05)


### Features

* **pocket-id:** allow postgresql as connection string protocol ([#168](https://github.com/anza-labs/charts/issues/168)) ([75c494f](https://github.com/anza-labs/charts/commit/75c494f80fcb224423862a4c8d1af5dae291b873))

## [1.3.1](https://github.com/anza-labs/charts/compare/pocket-id-1.3.0...pocket-id-v1.3.1) (2025-06-30)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.5.0 ([#166](https://github.com/anza-labs/charts/issues/166)) ([5fc4a31](https://github.com/anza-labs/charts/commit/5fc4a31d0468dd8ca41bcbb069e5444e942e945a))

## [1.3.0](https://github.com/anza-labs/charts/compare/pocket-id-1.2.0...pocket-id-v1.3.0) (2025-06-25)


### Features

* **pocket-id:** allow host overriding ([bd1eb35](https://github.com/anza-labs/charts/commit/bd1eb35840bef3980752c870420c4c58807af518))

## [1.2.0](https://github.com/anza-labs/charts/compare/pocket-id-1.1.5...pocket-id-v1.2.0) (2025-06-23)


### Features

* **pocket-id:** add local-ipv6 configuration ([#162](https://github.com/anza-labs/charts/issues/162)) ([a6ad7b6](https://github.com/anza-labs/charts/commit/a6ad7b6c902cfd3f79d03e601795bec6ac0b4bc5))
* **pocket-id:** add otel configuration ([#163](https://github.com/anza-labs/charts/issues/163)) ([6ae1358](https://github.com/anza-labs/charts/commit/6ae1358b3b0c52e323043aa69d7dac8127fe9d86))


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.4.1 ([#161](https://github.com/anza-labs/charts/issues/161)) ([c5efac7](https://github.com/anza-labs/charts/commit/c5efac76469e315263357c34e387722eff3b214e))

## [1.1.5](https://github.com/anza-labs/charts/compare/pocket-id-1.1.4...pocket-id-v1.1.5) (2025-06-18)


### Bug Fixes

* **pocket-id:** mount paths ([#153](https://github.com/anza-labs/charts/issues/153)) ([79e71b2](https://github.com/anza-labs/charts/commit/79e71b2a419d82db5569e2385e08305b6206f8aa))

## [1.1.4](https://github.com/anza-labs/charts/compare/pocket-id-1.1.3...pocket-id-v1.1.4) (2025-06-11)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.3.1 ([#143](https://github.com/anza-labs/charts/issues/143)) ([67b8b82](https://github.com/anza-labs/charts/commit/67b8b82eee5de1708c8f492aa747b0a3a1f060ea))

## [1.1.3](https://github.com/anza-labs/charts/compare/pocket-id-1.1.2...pocket-id-v1.1.3) (2025-06-11)


### Miscellaneous Chores

* **deps:** update ghcr.io/pocket-id/pocket-id docker tag to v1.2.0 ([#135](https://github.com/anza-labs/charts/issues/135)) ([195b28f](https://github.com/anza-labs/charts/commit/195b28f891faf8bd925aedb9c102b62a457de543))
* **multi:** generated new value schemas ([5f4642a](https://github.com/anza-labs/charts/commit/5f4642a315a0785f5ce34d72f9680fb02a387204))

## [1.1.2](https://github.com/anza-labs/charts/compare/pocket-id-1.1.1...pocket-id-v1.1.2) (2025-05-28)


### Bug Fixes

* **pocket-id:** invalid db path ([e04f414](https://github.com/anza-labs/charts/commit/e04f414ede36566312b7c13bb8c026277cdad52e))

## [1.1.1](https://github.com/anza-labs/charts/compare/pocket-id-1.1.0...pocket-id-v1.1.1) (2025-05-28)


### Bug Fixes

* **pocket-id:** invalid db path ([e79fa1d](https://github.com/anza-labs/charts/commit/e79fa1dfe5eb6b34a364f9352c7a331e5090da88))

## [1.1.0](https://github.com/anza-labs/charts/compare/pocket-id-1.0.0...pocket-id-v1.1.0) (2025-05-28)


### Features

* **pocket-id:** add analytics control ([#126](https://github.com/anza-labs/charts/issues/126)) ([a413213](https://github.com/anza-labs/charts/commit/a413213399594498a9dc10c678b750b2e2a0d757))

## 1.0.0 (2025-05-27)


### ⚠ BREAKING CHANGES

* **pocket-id:** prepare for v1 pocket-id release ([#124](https://github.com/anza-labs/charts/issues/124))

### Features

* **pocket-id:** prepare for v1 pocket-id release ([#124](https://github.com/anza-labs/charts/issues/124)) ([b400d09](https://github.com/anza-labs/charts/commit/b400d09e66a4d8b07f988bd56f33494ee1fe8ece))


### Bug Fixes

* **pocket-id:** existingClaim functionality and `PUBLIC_UI_CONFIG_DISABLED` value ([#106](https://github.com/anza-labs/charts/issues/106)) ([dba6f57](https://github.com/anza-labs/charts/commit/dba6f5774dbf512f5ee8a5540b2f0530b0111eb7))
* **pocket-id:** one-time access email settings ([#122](https://github.com/anza-labs/charts/issues/122)) ([fc5b0fc](https://github.com/anza-labs/charts/commit/fc5b0fc248cb0b7e6c5601ebfb93a7934d2870bf))
