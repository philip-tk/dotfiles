while true; do
	xsetroot -name " $(date +%d/%m/%y-%H:%M) | $(cat /sys/class/power_supply/BAT0/capacity)% "
	sleep 5
done &

~/.fehbg &

xbindkeys
exec dwm
exec --no-startup-id "pulseaudio --start"

while true; do
	/usr/local/bin/dwm 2> /dev/null
done

