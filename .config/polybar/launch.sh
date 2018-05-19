#!/bin/bash

# gaps mode set by bindsyms in i3 conf
modepath='/home/cat/.config/i3/mode.txt'

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

# Launch bar
polybar noborderbar &

