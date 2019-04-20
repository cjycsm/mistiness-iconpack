#!/bin/bash

mkdir ./flyme/

IFS=","
while read name icon package activity type
do
	if ! [[ $type =~ "魅族" ]] && ! [[ $type =~ "应用" ]] && ! [[ $type =~ "游戏" ]]; then
		continue
	fi
	cp "$icon.png" "./flyme/$package.png"
done < "summary.csv"

read -p "按任意键继续"