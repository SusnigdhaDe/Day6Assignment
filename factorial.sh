#!/bin/bash -x

#Write a program that computes a factorial of a number taken as input.

read -p "Enter a number" n
fact=1

for((i=1;i<=$n;i++))
do
fact=$(($fact*i))
done

echo $fact
