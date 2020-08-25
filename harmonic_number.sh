#/bin/bash -x

#Write a program that takes a command-line argument n and prints the nth harmonic number.

Hn=0
read -p "Enter the limit" n

for((i=1;i<=n;i++))
do
echo $((1/$i))
Hn=$(($Hn+1/$i))
done

echo $Hn

