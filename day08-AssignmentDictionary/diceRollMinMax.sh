#!/bin/bash -x

#constants

IS_ONE=1
IS_TWO=2
IS_THREE=3
IS_FOUR=4
IS_FIVE=5
IS_SIX=6

#declaring dictionary
declare -A diceRoll

counterOfOne=0
counterOfTwo=0
counterOfThree=0
counterOfFour=0
counterOfFive=0
counterOfSix=0


while [[ $counterOfOne -le 10 && $counterOfTwo -le 10 && $counterOfThree -le 10 && $counterOfFour -le 10 && $counterOfFive -le 10 && $counterOfSix -le 10 ]]
do
	randomRollNumber=$(( 1+RANDOM%6 ))
	case $randomRollNumber in
			$IS_ONE)
					(( counterOfOne++ ))
					diceRoll[Number1]=$counterOfOne
					;;
			$IS_TWO)
					(( counterOfTwo++ ))
               diceRoll[Number2]=$counterOfTwo
               ;;
			$IS_THREE)
               (( counterOfThree++ ))
               diceRoll[Number3]=$counterOfThree
               ;;
			$IS_FOUR)
               (( counterOfFour++ ))
               diceRoll[Number4]=$counterOfFour
               ;;
			$IS_FIVE)
               (( counterOfFive++ ))
               diceRoll[Number5]=$counterOfFive
               ;;
			$IS_SIX)
               (( counterOfSix++ ))
               diceRoll[Number6]=$counterOfSix
               ;;
	esac
done

echo "Dictionary is:"
echo ${!diceRoll[@]}
echo ${diceRoll[@]}


max=0

for i in "${diceRoll[@]}"
do
	if [[ $i -gt $max ]]
	then
		max=$i
	fi
done
echo "Max:"$max
min=$max

for i in "${diceRoll[@]}"
do
   if [[ $i -lt $min ]]
   then
      min=$i
   fi
done
echo "Min:"$min
