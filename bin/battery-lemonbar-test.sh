#!/usr/bin/bash

# Define the clock
Clock() {
        #DATETIME=$(date "+%a %b %d, %T")
        DATETIME=$(date "+%a %b %d, %H:%M")

        echo -n "$DATETIME"
}

#Define the battery
Battery() {
        BATPERC=$(acpi --battery | cut -d, -f2)
        echo "$BATPERC"
}

# Print the percentage
while true; do
        echo " %{c}$(Clock) %{F-}%{B-} %{r}$(Battery)"
        #echo " %{c}%{F#FFFF00}%{B#0000FF} $(Clock) %{F-}%{B-} %{r}$(Battery)"
	#echo -e "\uf242 \uf244 \uf240"
        sleep 1;
done
