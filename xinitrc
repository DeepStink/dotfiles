#!/bin/sh


exec frankenwm & wmpid=$!

sleep 2

~/.config/scripts/display.sh external &

hsetroot -cover ~/Pictures/Wallpapers/Wal_2.jpeg &

xrdb -load /home/rico/.Xresources &

~/.config/polybar/launch.sh &

picom --config ~/.config/picom/picom.conf &

wait $wmpid
