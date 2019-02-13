#!/bin/bash

IFS=","
while read name icon group activity type action
do
	echo "<item
	component=\"ComponentInfo{$group/$activity}\"
	drawable=\"$icon\"/>
	" >> "filter.txt"

	echo "<item
	class=\"$activity\"
	name=\"$icon\"/>
	" >> "map.txt"
	
	echo "<AppIcon
	name=\"$group/$activity\"
	image=\"$icon\"/>
	" >> "theme.txt"

	if ! [[ $action =~ "新增" ]]; then
		continue
	fi

	echo "<item>$icon</item>" >> "$type.txt"
	
done < "newest.csv"