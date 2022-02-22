#!/usr/bin/env bash

# add otp and the secret is passed by clipboard

account="$1"

usage="usage: $0 [otp name]"

test -z "${account}" && echo "${usage}" && exit 1

key="$(pbpaste)"

cloak add "$account" "$key"
