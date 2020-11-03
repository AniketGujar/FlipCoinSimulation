#!/bin/bash

echo "This problem displays the winner Heads or Tails"

Toss=$((RANDOM%2))
if [[ $Toss -eq 1 ]]
then
	echo Heads
else
	echo Tails
fi
