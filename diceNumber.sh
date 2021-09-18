#!/bin/bash -x

declare -A diceNum
diceNum[1]=0
diceNum[2]=0
diceNum[3]=0
diceNum[4]=0
diceNum[5]=0
diceNum[6]=0

for (( i=0; i<100; i++ ))
do 
ranCheck=$((RANDOM%6+1))
echo "$ranCheck"
diceNum[$ranCheck]=$(( ${diceNum[$ranCheck]} + 1 ))

	if [ ${diceNum[$ranCheck]} == 10 ]
	then
		echo "-----------------------"
	break
	fi
done

echo "dice count is ${!diceNum[@]} is :::: ${diceNum[@]}"
echo "----------------------------"
echo "$ranCheck :: wins first"
echo "----------------------------"
echo "----------------------------"
diceMin=${diceNum[1]}
diceMax=${diceNum[1]}

for i in ${diceNum[@]}
do
	if [ $i -lt $diceMin ]
	then
		diceMin=$i
	fi
	if [ $i -gt $diceMax ]
	then
		diceMax=$i
	fi
done
	
echo "Maximum Numbers ::$diceMax"
echo "Minimum numbers ::$diceMin"
