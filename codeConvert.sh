#!/bin/bash

file=newest.csv
filterFile=filter.txt
IFS=","
while read name icon group activity type
do
	echo "<item
	component=\"ComponentInfo{$group/$activity}\"
	drawable=\"$icon\"/>
" >> $filterFile
	echo "<item>$icon</item>" >> "$type.txt"
done < $file