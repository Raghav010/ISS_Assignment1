#!/bin/bash

#a part- Size of file in bytes , the first command line argument is the file name
echo "Calculating File Size..."
wc -c $1 | awk '{ print $1 }'

echo
echo 
echo

#b part- Lines in file
echo "lines in file"
wc -l $1 | awk '{ print $1 }'

echo
echo 
echo

#c part - words in file
echo "words in file"
wc -w $1 | awk '{ print $1 }'

echo
echo 
echo

#d part - words in each line
echo "words in each line"
awk '{ print "Line No:" NR "-Count of words:" NF }' $1

echo
echo 
echo

#e part - repeated word count
echo "Repeated word count"
awk 'BEGIN { RS = "[^a-zA-Z0-9]" }; { dnd[$0]++ } ; END { for (i in dnd) { if (dnd[i]!=1 && i!="") { print "Word:" i "-Count of repetition:" dnd[i]-1 } } }' $1


echo
echo 
echo
