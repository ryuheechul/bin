#!/usr/bin/env bash

cmd="shortcuts run \"$1\""

# thanks to https://stackoverflow.com/a/10408906/1570165
nohup \
	bash -c "${cmd}" \
	</dev/null \
	>/dev/null \
	2>&1 & # completely detached from terminal

# alternatively `bash -c "sleep 0.1 && ${cmd}"` in case extra delay is necessary

echo "${cmd} will run soon"
