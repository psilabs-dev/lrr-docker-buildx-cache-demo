#!/bin/sh
set -e
sleep "$(cat time-to-install.txt)"
echo installed > /installed
