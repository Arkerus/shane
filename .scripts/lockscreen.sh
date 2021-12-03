#!/bin/sh

#rm -f /tmp/locked.png && rm -f /tmp/base.png

# If `imagemagick` is not installed, use a blank screen.
[ -f /usr/bin/convert ] &&
scrot -m -z /tmp/base.png &&
#pgrep -x dunst && notify-send -i ~/.scripts/pix/lock.png "Locking computer..." &&
convert /tmp/base.png -blur 0x8 /tmp/locked.png

# Pause music (mocp, mpd and send the pause key to all mpv videos):
mocp -P >/dev/null 2>&1
mpc pause >/dev/null 2>&1
pauseallmpv >/dev/null 2>&1

i3lock -e -f -c 000000 -i /tmp/locked.png

# In five seconds, turn off display unless key press in last 4 seconds.
#sleep 5 && [ 4000 -lt "$(xssstate -i)" ] &&  pgrep -x i3lock && xset dpms force off
