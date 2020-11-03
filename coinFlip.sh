#!/bin/bash

echo "This problem displays the winner Heads or Tails"

for (( i=0; i<=50; i++ ))
do
Toss=$((RANDOM%2))
if [[ $Toss -eq 1 ]]
then
	((h++))
	if [[ $h -eq 21 ]]
	then echo "Head Won 21 Times"
	echo "Won by `expr $h - $t`"
	break
	fi
else
	((t++))
	if [[ $t -eq 21 ]]
	then echo "Tail won 21 Times"
	echo "Won by `expr $t - $h`"
	break
	fi
fi
done
