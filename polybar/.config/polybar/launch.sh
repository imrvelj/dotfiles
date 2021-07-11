#!/usr/bin/env bash

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar main &
