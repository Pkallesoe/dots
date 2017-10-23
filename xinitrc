export DE=xfce
# Capslock = ctrl
setxkbmap -option ctrl:nocaps

# Set wallpaper
# feh --bg-scale ~/Downloads/ifnotme.jpg &

# Load Xresources
xrdb ~/.Xresources

# Make notifications run properly
sh ~/bin/notify.sh

# Redshift
#redshift -o -l 0:0 -b 0.8 -t 6500:6500

# Lock on suspend
# xss-lock -- i3lock --fuzzy &
xss-lock -- i3lock &

# Transparency
xcompmgr -c &

# Start window-manger:
exec xmonad
