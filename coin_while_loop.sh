#!/bin/bash -x

#Extend the Flip Coin problem till either Heads or Tails wins 11 times.

head_count=0
tail_count=0
while [[ $head_count -ne 11 && $tail_count -ne 11 ]]
do
toss=$((RANDOM%2))
if [ $toss -eq 1 ]
then
echo "head"
head_count=$(($head_count+1))
elif [ $toss -eq 0 ]
then echo "tail"
tail_count=$(($tail_count+1))
else
echo no result
fi
done

echo head_count=$head_count and tail_count=$tail_count
