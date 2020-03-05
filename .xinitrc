while true; do
	xsetroot -name " $(date +%d) $(date +%B) $(date +%y) | $(date +%H%M) hrs | $(ip route get 1.1.1.1 | head -n1 | cut -f 5 -d\ ) | $(cat /sys/class/power_supply/BAT0/capacity)% "
	sleep 5
done &

~/.fehbg &

xbindkeys
exec dwm
exec --no-startup-id "pulseaudio --start"

while true; do
	/usr/local/bin/dwm 2> /dev/null
done

