#! /bin/sh

BATTINFO=`acpi -b`

notify-send -u low "$BATTINFO"
