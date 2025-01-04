#!/bin/zsh

# For i3 launch on startup
# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Dual monitor
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload base &
  done
else
  polybar --reload base &
fi

# Launch bar1 and bar2
# echo "---" | tee -a /tmp/base.log
# polybar base >&1 | tee -a /tmp/base.log & disown

echo "Bars launched..."
