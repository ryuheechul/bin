#!/usr/bin/env bash

set -e

# This script should be used only for the combination of:
# - https://github.com/evansmurithi/cloak is the tool to retrieve otp code
# - https://github.com/fabianishere/pam_reattach to allow using touch id for sudo
# - change permission of cloak to sudo user only
# - alfred workflow to invoke this script

# this is to fail early in case pam_reattach is not enabled
! grep 'pam_reattach' /etc/pam.d/sudo &> /dev/null \
	&& echo -n 'execution failed' | pbcopy \
	&& osascript -e 'display notification "check /etc/pam.d/sudo"' \
	&& sleep 3 && exit 1
	# && echo ... - because alfred might try to paste
	# && osascript ... - first feedback
	# && sleep ... - delay the end result

# this makes it easy to call other script using relative path
script_d="$(dirname "$0")"

# accept the name as a input via first argument
sudo "${script_d}"/../../otp/view.sh "$1"
