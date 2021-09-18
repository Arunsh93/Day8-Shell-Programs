#!/bin/bash
declare -A birthDate
janCount=0
febCount=0
marCount=0
aprCOunt=0
mayCount=0
junCount=0
julCOunt=0
augCount=0
sepCount=0
octCount=0
novCount=0
decCount=0
for ((i=0; i<50; i++))
do
	randomMonth=$((RANDOM%12+1))
	case $randomMonth in
	1)
		janArray[$janCount]="person$i"
		janCount=$((janCount+1))
		birthDate["jan"]=${janArray[@]};;
	2)
		febArray[$febCount]="person$i"
      febCount=$((febCount+1))
      birthDate["feb"]=${febArray[@]};;
	3)
		marArray[$marCount]="person$i"
      marCount=$((marCount+1))
      birthDate["mar"]=${marArray[@]};;
	4)
		aprArray[$aprCount]="person$i"
      aprCount=$((aprCount+1))
      birthDate["apr"]=${aprArray[@]};;
	5)
		mayArray[$mayCount]="person$i"
      mayCount=$((mayCount+1))
      birthDate["may"]=${mayArray[@]};;
	6)
		junArray[$junCount]="person$i"
      junCount=$((junCount+1))
      birthDate["jun"]=${junArray[@]};;
	7)
		julArray[$julCount]="person$i"
      julCount=$((julCount+1))
      birthDate["jul"]=${julArray[@]};;
	8)
		augArray[$augCount]="person$i"
      augCount=$((augCount+1))
      birthDate["aug"]=${augArray[@]};;
	9)
		sepArray[$sepCount]="person$i"
      sepCount=$((sepCount+1))
      birthDate["sep"]=${sepArray[@]};;
	10)
		octArray[$octCount]="person$i"
      octCount=$((octCount+1))
      birthDate["oct"]=${octArray[@]};;
	11)
		novArray[$novCount]="person$i"
      novCount=$((novCount+1))
      birthDate["nov"]=${novArray[@]};;
	12)
		decArray[$decCount]="person$i"
      decCount=$((decCount+1))
      birthDate["dec"]=${decArray[@]};;
	esac
done
read -p "Which month data do you need from 1-12 : " userMonth
case $userMonth in
1)
	echo "Jan ${birthDate["jan"]}" ;;
2)
	echo "Feb ${birthDate["feb"]}" ;;
3)
	echo "Mar ${birthDate["Mar"]}" ;;
4) 
	echo "Apr ${birthDate["Apr"]}" ;;
5)
	echo "May ${birthDate["May"]}" ;;
6)
	echo "Jun ${birthDate["jun"]}" ;;
7)
	echo "Jul ${birthDate["Jul"]}" ;;
8)
	echo "Aug ${birthDate["Aug"]}" ;;
9)
	echo "Sep ${birthDate["Sep"]}" ;;
10)
	echo "Oct ${birthDate["Oct"]}" ;;
11)
	echo "Nov ${birthDate["Nov"]}" ;;
12)
	echo "Dec ${birthDate["Dec"]}" ;;
esac
