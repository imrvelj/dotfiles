#!/bin/sh
#
# ~/.xinitrc
#
if [ -f ~/.Xresources ]; then
  xrdb -merge ~/.Xresources
fi
