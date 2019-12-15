while true; do
	xsetroot -name "Battery Level: $(cat /sys/class/power_supply/BAT0/capacity)%"
	sleep 5
done &

~/.fehbg &

xbindkeys
exec dwm
exec --no-startup-id "pulseaudio --start"

while true; do
	/usr/local/bin/dwm 2> /dev/null
done

