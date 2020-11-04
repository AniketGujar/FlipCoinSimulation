#!/bin/bash
echo "This problem displays the winner Heads or Tails"

for (( i=0; i<=50; i++ ))
do

Toss=$((RANDOM%2))

if [[ $Toss -eq 1 ]]
then
	((h++))

else
	((t++))
fi

if [[ $t -gt 20 || $h -gt 20 ]]
then
	if [[ $t -gt $h ]]
	then
		if [[ `expr $t - $h` -gt 2 ]]
		then
			echo "Tail Wins: No. of Tails = $t"
			echo "No.of Head count = $h"
		break
		fi
	elif [[ $t -lt $h ]]
        then
                if [[ `expr $h - $t` -gt 2 ]]
                then
                        echo "Head Wins: No. of Heads = $h"
                        echo "No.of Tail count = $t"
                break
		fi
	else
		echo "TIE"
	fi
fi
done
