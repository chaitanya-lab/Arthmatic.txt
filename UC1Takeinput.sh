#!/bin/bash

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

var=$(( a+(b*c) ))
var1=$(( (a*b)+c ))
var2=$(( c+(a/b) ))
var3=$(( a%(b/c) ))

echo $var
echo $var1
echo $var2
echo $var3

res[0]=$var
res[1]=$var1
res[2]=$var2
res[3]=$var3

echo -ne "\n Index Numbers : ${!res[@]}"
echo -ne "\n Array Before Sorting : ${res[@]}"

for((i=0; i<4; i++))
do
        for((j=i+1; j<4; j++))
        do
                if [ ${res[i]} -gt ${res[$((j))]} ]
                then
                        temp=${res[i]}
                        res[$i]=${res[$((j))]}
                        res[$((j))]=$temp
                fi
        done
done

echo -ne "\n Array After Sorting In Ascending Order : ${res[@]}\n"
