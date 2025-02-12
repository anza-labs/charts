#!/usr/bin/env bash

set -eu

COMMENT="${1}"
PR="${2}"
GITHUB_ENV="${3}"

if [[ "$COMMENT" =~ ^/ci[[:space:]]+([a-zA-Z0-9_-]+)[[:space:]]+([0-9]+\.[0-9]+\.[0-9]+)$ ]]; then
    echo "chart_name=${BASH_REMATCH[1]}" >> $GITHUB_ENV
    echo "chart_version=${BASH_REMATCH[2]}" >> $GITHUB_ENV
    branch=$(gh pr view "${PR}" --json='headRefName' -q='.headRefName')
    echo "branch=${branch}" >> $GITHUB_ENV
else
    echo "Comment format invalid. Expected '/ci <chart-name> <chart-version>'." >&2
    exit 1
fi
