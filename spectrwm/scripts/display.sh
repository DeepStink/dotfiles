#!/bin/sh
#

displays() {
	case $1 in
	external)
		xrandr --output eDP1 --off --output HDMI1 --primary --mode 1920x1080 --rate 144 --pos 0x0 --rotate normal --output VIRTUAL1 --off
		;;
	multihead)
		xrandr --output eDP1 --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --rate 144 --pos 1920x0 --rotate normal --output VIRTUAL1 --off
		;;
	*)
		;;
	esac;
}

displays $1
