#!/bin/bash

#first part - removing empty lines
echo "Removing Empty Lines..."
grep -E "\S+" quotes.txt


echo
echo
echo


#second part-removing duplicates
echo "Removing Duplicates..."
awk '!dnd[$0]++' quotes.txt