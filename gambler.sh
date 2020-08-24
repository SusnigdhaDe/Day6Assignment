#!/bin/bash -x

#Write a Program where a gambler starts with Rs 100 and places Re 1 bet
#until he/she goes broke i.e. no more money to gamble or reaches the
#goal of Rs 200. Keeps track of number of times won and number of bets
#made.

pocket=100
win_count=0
lost_count=0
while [[ $pocket -le 200 && $pocket -ge 1 ]]
do
gamble=$((RANDOM%2))
if [ $gamble -eq 1 ]
then
echo "won"
win_count=$(($win_count+1))
pocket=$(($pocket+1))
elif [ $gamble -eq 0 ]
then echo "lost"
lost_count=$(($lost_count+1))
pocket=$(($pocket-1))
else
echo no result
fi
done

echo win_count=$win_count and lost_count=$lost_count
echo pocket=$pocket
