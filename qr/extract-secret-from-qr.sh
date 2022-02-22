#!/usr/bin/env bash

set -e

image="$1"

usage="usage: $0 [image path]"

test -z "${image}" && echo "${usage}" && exit 1

# this makes it easy to call other scripts using relative path
script_d="$(dirname "$0")"

command -v qrscanner 1>/dev/null || yarn global add qr-scanner-cli
command -v url-parser 1>/dev/null || go install github.com/herloct/url-parser@latest

url=$(qrscanner --clear "$image")

url-parser --part=query --query-field=secret "$url" | pbcopy
echo "secret is copied to clipboard"

"${script_d}"/../pb/clear_after_async.sh 60
