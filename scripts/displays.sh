#!/bin/sh
#

displays() {
	case $1 in
	laptop)
		xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --off --output VIRTUAL1 --off 
		;;
	
	external)
		xrandr --output eDP1 --off --output HDMI1 --primary --mode 1920x1080 --rate 144 --pos 0x0 --rotate normal --output VIRTUAL1 --off
		;;
	multihead)
		#xrandr --output eDP1 --mode 1920x1080 --pos 0x1080 --rotate normal --output HDMI1 --primary --mode 1920x1080 --rate 144 --pos 0x0 --rotate normal --output VIRTUAL1 --off
		xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --rate 144 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
		;;
	*)
		;;
	esac;
}

displays $1
