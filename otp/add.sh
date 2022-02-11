#!/usr/bin/env bash

# add otp and the secret is passed by clipboard

account="$1"
key="$(pbpaste)"

cloak add "$account" "$key"
