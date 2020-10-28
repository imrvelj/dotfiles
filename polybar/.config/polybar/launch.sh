#!/usr/bin/env sh
# Terminate already running bar instances
killall -q polybar
# Wait until the processes have been shut down
while pidof polybar >/dev/null; do sleep 1; done

polybar dummy &
polybar default &

