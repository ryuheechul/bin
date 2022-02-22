#!/usr/bin/env bash

# if the given original is same as the one in the clipboard then clear the clipboard

# validating input would be nice but currently just trusting the input
original="$1"

usage="usage: $0 [text to compare]"

test -z "${original}" && echo "${usage}" && exit 1

test "${original}" == "$(pbpaste)" && echo -n '' | pbcopy
