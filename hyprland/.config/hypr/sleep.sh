#!/usr/bin/env sh

swayidle -w \
    timeout 600 'hyprctl dispatch dpms off ' \
    timeout 120 'systemctl suspend' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep 'swaylock'
