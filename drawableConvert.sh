#!/bin/bash

path=./MistinessIconpack/app/src/main/res/drawable-nodpi
files=$(ls $path)
for filename in $files
do
	if [ $filename == "header_image.png" ]; then
		continue
	fi
	echo "<item drawable=\"${filename%.*}\"/>" >> drawable.txt
done