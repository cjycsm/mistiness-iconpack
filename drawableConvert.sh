#!/bin/bash

file=drawable.csv
outputFile=drawable.txt 
cat $file | awk -F',' '!a[$2]++{ print "<item drawable=\""$2"\"/>"; }' > $outputFile