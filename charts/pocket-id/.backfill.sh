#!/usr/bin/env bash

set -eu

YQ="${1}"

"${YQ}" '.appVersion = load("./values.yaml").pocketID.image.tag' './Chart.yaml' -i
