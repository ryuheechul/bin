#!/usr/bin/env bash

echo "$(cloak list | grep 'Account: ' | awk '{print $2}')"
