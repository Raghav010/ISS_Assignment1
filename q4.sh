#!/bin/bash

read -p "" list
nums=$(echo $list | awk 'BEGIN {FS=","}; {for (i=1;i<=NF;i++) {printf("%d ",$i)}}')
length=$(echo $nums | wc -w)
numlist=($nums)

unsortedlen=$length
sorted=0

for (( i=1;i<length;i+=1 ))
do
    for (( m=0;m<(unsortedlen-1);m+=1 ))
    do
        if [[ ${numlist[$m]} -gt ${numlist[ (( m+1 )) ]} ]]
        then
            temp=${numlist[ (( m+1 )) ]}
            numlist[ (( m+1 )) ]=${numlist[$m]}
            numlist[$m]=$temp
        else
            (( sorted+=1 ))
        fi
    done
    if [[ $sorted -eq $(( unsortedlen-1 )) ]]
    then
        break
    fi
    (( unsortedlen-=1 ))
    sorted=0
done

echo ${numlist[@]}