export DE=xfce
# Capslock = ctrl
setxkbmap -option ctrl:nocaps
# Load Xresources
xrdb ~/.Xresources

# Make notifications run properly
sh ~/bin/notify.sh

# Redshift
redshift -o -l 0:0 -b 0.8 -t 6500:6500

# Lock on suspend
xxs-lock -- i3lock --fuzzy &

# Start window-manger:
exec xmonad
