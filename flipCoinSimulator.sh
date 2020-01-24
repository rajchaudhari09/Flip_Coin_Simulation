#!/bin/bash -x
echo "Welcome To Flip Coin Simulator"

#!function for Flip Coin

function flipCoin() {
if(($((RANDOM % 2)) == 1 ))
then
	echo "Heads"
else
	echo "Tails"
fi
}

#!Calling Function
flipCoin
