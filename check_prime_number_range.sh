#!/bin/bash

#Extend the program to take a range of numbers as input and output the Prime Numbers in that range.

c=0
read -p "Enter a lower limit of range" l
read -p "Enter a upper limit of range" u
echo "The prime numbers in this range are"

for ((j=$l;j<=$u;j++))
do
for ((i=2;i<$j;i++))
do
if [ $(($j%$i)) -eq 0 ]
then c=$(($c+1))
fi
done
if [ $c -eq 0 ]
then echo $j
fi
c=0
done
