#!/usr/bin/env bash

set -eou

GPG_KEYRING_BASE64="$1"
GPG_PASSPHRASE="$2"
GITHUB_ENV="$3"

gpg_dir=.cr-gpg
rm -rf "$gpg_dir"
mkdir "$gpg_dir"
keyring="$gpg_dir/secring.gpg"
base64 -d <<< "${GPG_KEYRING_BASE64:?Keyring not set or empty}" > "$keyring"
passphrase_file="$gpg_dir/passphrase"
echo -n "${GPG_PASSPHRASE:?Passphrase not set or empty}" > "$passphrase_file"
echo "CR_PASSPHRASE_FILE=$passphrase_file" >> "$GITHUB_ENV"
echo "CR_KEYRING=$keyring" >> "$GITHUB_ENV"
