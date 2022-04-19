#!/bin/bash


awk 'BEGIN { FS = ". ~" };/.+/ { print $2, "once", "said,"$1"." };NF==0 { printf "\n" }' quotes.txt > speech.txt