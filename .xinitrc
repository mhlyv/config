xsetroot -solid '#111111'
set -b off

mv -f ~/.config/pulse ~/.config/pulse.old
pulseaudio --start -D
pactl set-sink-mute 0 1
pactl set-source-mute 1 1

while true; do
	xsetroot -name " $(cat /sys/class/power_supply/BAT0/capacity)% $(date +%H:%M) "
	sleep 1
done &

setxkbmap -option compose:ralt

dwm
