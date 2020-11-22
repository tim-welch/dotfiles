if [ $(echo $DESKTOP_STARTUP_ID | grep i3) ]; then
	xrandr --output HDMI-2 --mode "1920x1080"

	xrandr --newmode "1920x1080_60.00" 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
	xrandr --addmode DP-2 "1920x1080_60.00"
	xrandr --output DP-2 --mode "1920x1080_60.00"
	xrandr --output DP-2 --auto --left-of HDMI-2
else
	xrandr --newmode "1920x1080_60.00" 173.00 1920 2048 2248 2576 1080 1083 1088 1120 -hsync +vsync
	xrandr --addmode DP-2 "1920x1080_60.00"
fi
	

