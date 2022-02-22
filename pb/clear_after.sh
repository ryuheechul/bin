#!/usr/bin/env bash

# it's a helper script to delay before clearing the clipboard

# validating input would be nice but currently just trusting the input
second="$1"

usage="usage: $0 [second]"

test -z "${second}" && echo "${usage}" && exit 1

# this makes it easy to call other scripts using relative path
script_d="$(dirname "$0")"

original="$(pbpaste)"

sleep ${second}; "${script_d}"/clear.sh "${original}"

