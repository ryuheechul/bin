#!/usr/bin/env bash

# validating input would be nice but currently just trusting the input
second=$1

original=$(pbpaste)

sleep ${second} && test "${original}" == "$(pbpaste)" && echo -n '' | pbcopy &
