#!/bin/fish

# Terminate already running polybars
killall -q polybar

# Wait until all the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
polybar top &
