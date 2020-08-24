#!/bin/bash -x

#Write a program to compute factors of a number N using prime factorization method.

c=0
read -p "Enter a number " n
echo "The prime factors are "

for (( i=2;i<n;i++ ))
do
if [[ $(($n%$i)) -eq 0 ]]
then
{
for (( j=2;j<i;j++ ))
do 
if [[ $(($i%$j)) -eq 0 ]]
then c=$(($c+1))
fi
done
}
if [ $c -eq 0 ]
then echo $i
fi
c=0
fi
done

