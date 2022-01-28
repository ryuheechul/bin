#!/usr/bin/env bash

# https://github.com/evansmurithi/cloak is the tool to retrieve otp code

# this makes it easy to call other script using relative path
cd "$(dirname "$0")" || exit

# accept the name as a input via first argument
otp_name=$1

# get otp code and trim
_code=$(cloak view ${otp_name} | head -c 6)

# add it to clipboard
echo -n $_code | pbcopy

# clean up after 60 seconds for security and tidiness
## but only if clipboard and the code is still same to avoid cleaning up the wrong data from other programs
./clear_pb_after.sh 60
