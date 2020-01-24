#!/bin/bash 
echo "Welcome To Flip Coin Simulator"

#!Declaring Varibles
declare -A coinFacesDict
H=0
T=0

#!function for Flip Coin
function flipCoin() {
read -p "Enter How Many Times You want To FlipCoin : " flips

for((i=0;i<flips;i++))
do
	if(($((RANDOM % 2)) == 1 ))
	then
		coinFacesDict["result"$i]="Head"
		((H++))
	else
		coinFacesDict["result"$i]="Tails"
			((T++))
	fi
done
echo "Heads Percentage = $(echo "scale=2; $H * 100 / $flips" | bc )"
echo "Tails Percentage =  $(echo "scale=2; $T * 100 / $flips" | bc )"

}
flipCoin
echo "All Occurrence : "${coinFacesDict[@]}
#!Calling Function
