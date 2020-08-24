#!/bin/bash -x

#Write a program that takes an input and determines if the number is prime.

c=0
read -p "Enter a number" n

for ((i=2;i<$n;i++))
do
if [ $(($n%$i)) -eq 0 ]
then c=$(($c+1))
fi
done

if [ $c -eq 0 ]
then echo "prime number"
else
echo "not a prime number"
fi
