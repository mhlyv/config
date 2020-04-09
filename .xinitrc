xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Timeout" 50
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Inertia" 3
xinput set-prop "/dev/wsmouse" "Device Accel Constant Emulation Inertia" 0.4

xsetroot -solid "#111111" &
eval status &

while true; do
	xsetroot -name " battery: $(apm -l)% time: $(date +%H:%M) "
	sleep 1
done &

dwm
