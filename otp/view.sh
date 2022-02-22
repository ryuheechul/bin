#!/usr/bin/env bash

# https://github.com/evansmurithi/cloak is the tool to retrieve otp code

# accept the name as a input via first argument
otp_name=$1

usage="usage: $0 [otp name]"

test -z "${otp_name}" && echo "${usage}" && exit 1

# this makes it easy to call other scripts using relative path
script_d="$(dirname "$0")"

# get otp code and trim
_code=$(cloak view ${otp_name} | head -c 6)

# add it to clipboard
echo -n $_code | pbcopy

# clean up after 60 seconds for security and tidiness
## but only if clipboard and the code is still same to avoid cleaning up the wrong data from other programs
"${script_d}"/../pb/clear_after_async.sh 60
