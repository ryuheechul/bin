#!/usr/bin/env bash

set -e

otp_name="$1"
image="$2"

usage="usage: $0 [otp name] [image path]"

test -z "${otp_name}" && echo "${usage}" && exit 1
test -z "${image}" && echo "${usage}" && exit 1

# this makes it easy to call other scripts using relative path
script_d="$(dirname "$0")"

${script_d}/extract-secret-from-qr.sh "$image"
${script_d}/../otp/add.sh "$otp_name"
