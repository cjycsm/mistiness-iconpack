#!/bin/bash

file=icon.csv
outputFile=temp.txt 
IFS=","
while read name icon group activity null
do
	echo "<item
	component=\"ComponentInfo{$group/$activity}\"
	drawable=\"$icon\"/>
" >> $outputFile
done < $file