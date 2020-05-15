#!/bin/sh

pgrep pulseaudio && killall pulseaudio
pulseaudio --start -D

setxkbmap -option compose:ralt
setxkbmap -option altwin:prtsc_rwin

set b off

pgrep xss-lock && killall xss-lock
xss-lock --transfer-sleep-lock -- i3lock -c 000000 --nofork &

i3
