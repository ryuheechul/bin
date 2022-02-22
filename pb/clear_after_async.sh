#!/usr/bin/env bash

# validating input would be nice but currently just trusting the input
second=$1

usage="usage: $0 [second]"

test -z "${second}" && echo "${usage}" && exit 1

script_d="$(dirname "$0")"

nohup "${script_d}"/clear_after.sh "${second}" >/dev/null 2>&1 &
