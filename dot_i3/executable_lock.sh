#!/bin/sh

# Lock screen script
lock() {
  i3lock --nofork \
    --ignore-empty-password \
    --show-failed-attempts \
    --clock \
    --radius 135 \
    --pass-media-key \
    -i /home/mkso/Pictures/wallpapers/minimalistic/gruvbox_minimal_space.png \
    --centered
}

# Handle screen power management
revert() {
  xset dpms 0 0 0
  xset -dpms
  xset s off
}

# Set screen timeout (in seconds)
xset +dpms dpms 300 300 300 # 5 minutes
trap revert HUP INT TERM

# Execute lock
lock
revert
