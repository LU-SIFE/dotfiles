feh --bg-scale '/home/lusife/Wallpaper/lusife.png' &
pulseaudio --daemonize &
picom -cb &

polybar workspace &
polybar stats &
polybar audio &
polybar battery &
polybar music &

xrdb -merge ~/.Xresources &
xsetroot -cursor_name left_ptr &
2bwm 
