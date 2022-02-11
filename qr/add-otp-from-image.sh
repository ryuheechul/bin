#!/usr/bin/env bash

otp_name="$1"
image="$2"

# this makes it easy to call other scripts using relative path
script_d="$(dirname "$0")"

${script_d}/extract-secret-from-qr.sh "$image"
${script_d}/../otp/add.sh "$otp_name"
