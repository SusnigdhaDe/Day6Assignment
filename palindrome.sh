#!/bin/bash -x

#Write a function to check if the two numbers are Palindromes

read -p "Enter a number" n
n1=$n
rev=0

while [ $n1 -ne 0 ]
do
d=$(($n1%10))
rev=$(($rev*10+$d))
n1=$(($n1/10))
done

if [ $n -eq $rev ]
then echo "Palindrome number"
else
echo "Not a Palindrome number"
fi
