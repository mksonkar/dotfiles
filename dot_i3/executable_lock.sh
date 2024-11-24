#!/bin/sh
# revert() {
#   # xset dpms 0 0 0
#   xset -s off -dmps
# }
# trap revert HUP INT TERM
# xset +dpms dpms 5 5 5
# # i3lock -n -f -c 000000
#
# Using i3lock-color ----
i3lock --nofork --ignore-empty-password --show-failed-attempts --clock --radius 135 --pass-media-key -n -i /home/mkso/Pictures/wallpapers/minimalistic/gruvbox_minimal_space.png -C
# blurlock
# revert
