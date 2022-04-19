#!/bin/bash

#a part - prints a string in reverse
echo "Printing reverse"
read -p "enter a word " string
letters=`echo $string | grep -o .`
length=`echo $letters | wc -w`
actuallen=$(( length-1 ))
listletters=($letters)


for ((i=actuallen;i>=0;i-=1))
do
echo -n ${listletters[$i]}
done

echo
echo
echo
echo

#b part - subsequent letter
echo "reverse subsequent letter word"
read -p "enter a word " string
letters=`echo $string | grep -o .`


echo $letters | awk '{for (i=NF; i>0; i--) { printf("%c",$i) }}' | tr a-zA-Z b-zaB-ZA

echo
echo
echo
echo


#c part - half string reverse
echo "half string reverse"
read -p "enter a word " string
letters=`echo $string | grep -o .`
length=`echo $letters | wc -w`
halflen=$(( length/2-1 ))
actuallen=$(( length-1 ))
listletters=($letters)


for ((i=halflen;i>=0;i-=1))
do
echo -n ${listletters[$i]}
done

for ((i=halflen+1;i<=actuallen;i+=1))
do
echo -n ${listletters[$i]}
done

echo
echo
echo