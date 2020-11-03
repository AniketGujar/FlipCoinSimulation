#!/bin/bash

echo "This problem displays the winner Heads or Tails"

for (( i=0; i<=20; i++ ))
do
Toss=$((RANDOM%2))
if [[ $Toss -eq 1 ]]
then
	echo "Heads"
else
	echo "Tails"
fi
done
