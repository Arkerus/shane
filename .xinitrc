[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
#wal -i /home/$USER/Pictures/wal/uv.jpg                  # purple
fc-cache -f 
picom &
xsetroot -cursor_name left_ptr
killall polybar
(sleep 2; polybar mybar -r) &
urxvt &
#dunst &
exec bspwm
nvm use 14.17.1
xset +fp /home/arch/.local/share/fonts
xset fp rehash
# MPD daemon start (if no other user instance exists)
#[ ! -s ~/.config/mpd/pid ] && mpd
