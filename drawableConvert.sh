#!/bin/bash

path=./MistinessIconpack/app/src/main/res/drawable-nodpi
files=$(ls $path)
for filename in $files
do
	if [ $filename == "header_image.png" ] || [ $filename == "app_logo.png" ] || [[ $filename == "dynamic_"* ]] || [[ $filename == "clock_"* ]] || [[ $filename =~ "calendar_"[0-9]{1,} ]] || [[ $filename =~ "google_calendar_"[0-9]{1,} ]]; then
		continue
	fi
	echo "<item drawable=\"${filename%.*}\"/>" >> drawable.txt
done