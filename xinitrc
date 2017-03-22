# Capslock = ctrl
setxkbmap -option ctrl:nocaps
# Load Xresources
xrdb ~/.Xresources

# Make notifications run properly
sh ~/bin/notify.sh

# Start window-manger:
exec xmonad
