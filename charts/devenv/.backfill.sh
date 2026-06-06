#!/usr/bin/env bash

set -eu

YQ="${1}"

"${YQ}" '.appVersion = load("./values.yaml").core.image.tag' './Chart.yaml' -i
