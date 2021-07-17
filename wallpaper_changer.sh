#!/bin/bash


WALLPAPERS_PATH=/home/mathias/Pictures/wallpapers #paste your wallpapers path here. Example: /home/user/Pictures
INTERVAL=5m #choose the change time interval between the images. Use suffix 's' for seconds, 'm' for minutes or 'h' for hours  

N=0
IMAGES_LIST=()
for FILE in $WALLPAPERS_PATH/*; do
	if [ -f $FILE ]; then
		IMAGES_LIST[N]=$(basename $FILE)
		((N=N+1))
	fi
done

K=0
while [[ true ]]; do
	if [[ K -ne ${#IMAGES_LIST[@]} ]]; then
		gsettings set org.gnome.desktop.background picture-uri file://$WALLPAPERS_PATH/${IMAGES_LIST[K]}
		((K=K+1))
		sleep $INTERVAL
		continue
	else
		K=0
		continue
	fi
done

