#!/bin/sh
#set screen size for hdmi overscan issue of some hdmi display
#read config from /etc/screen.conf, format is
#percent center x y
#if center=1, auto-center position, don't care x,y value
busybox usleep $1 2>/dev/null
args=`cat /etc/screen.conf`
setwindow $args 1
#if failed, set default 
if [ $? -ne 0 ]; then
        setwindow 98 1 0 0
fi
