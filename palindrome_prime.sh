#!/bin/bash -x

#Take a number from user and check if the number is a Prime then show

#that its palindrome is also prime

function prime()
{
c=0;
for((i=2;i<$1;i++))
do
if [ $(($1%i)) -eq 0 ]
then
c=$(($c+1));
fi
done
if [ $c -eq 0 ]
then echo 1
else
echo 0
fi
}

function palindrome()
{
n=$1
n1=$n
rev=0
while [[ $n1 -ne 0 ]]
do
d=$(($n1%10))
rev=$(($rev*10+$d))
n1=$(($n1/10))
done
if [ $n -eq $rev ]
then echo $rev
else
echo 0
fi
}

read -p "Enter a number" num

check_prime=$(prime $num)
if [ $check_prime -eq 1 ]
then echo "The number is prime"
fi

check_palindrome=$(palindrome $num)
check_palindrome_prime=$(prime $check_palindrome)

if [[ $check_palindrome -ne 0 && $check_palindrome_prime -eq 1 ]]
then echo "It's palindrome is also prime"
fi
