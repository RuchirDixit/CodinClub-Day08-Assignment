#!/bin/bash

IS_JAN=1
IS_FEB=2
IS_MAR=3
IS_APR=4
IS_MAY=5
IS_JUN=6
IS_JUL=7
IS_AUG=8
IS_SEPT=9
IS_OCT=10
IS_NOV=11
IS_DEC=12

#dictionary

declare -A birthMonth

janCounter=0
febCounter=0
marCounter=0
aprCounter=0
mayCounter=0
junCounter=0
julCounter=0
augCounter=0
sepCounter=0
octCounter=0
novCounter=0
decCounter=0

for (( i=0 ; i<5; i++ ))
do
	randomMonth=$(( 1+RANDOM%12 ))
	case $randomMonth in
			$IS_JAN)
				birthMonth[January]=$(( ++janCounter));;
         $IS_FEB)
            birthMonth[February]=$(( ++febCounter));;
         $IS_MAR)
            birthMonth[March]=$(( ++marCounter));;
         $IS_APR)
            birthMonth[April]=$(( ++aprCounter));;
         $IS_MAY)
            birthMonth[May]=$(( ++mayCounter));;
         $IS_JUN)
            birthMonth[June]=$(( ++junCounter));;
         $IS_JUL)
            birthMonth[July]=$(( ++julCounter));;
         $IS_AUG)
            birthMonth[August]=$(( ++augCounter));;
         $IS_SEPT)
            birthMonth[September]=$(( ++sepCounter));;
         $IS_OCT)
            birthMonth[October]=$(( ++octCounter));;
         $IS_NOV)
            birthMonth[November]=$(( ++novCounter));;
         $IS_DEC)
            birthMonth[December]=$(( ++decCounter));;
	esac
done

for key in "${!birthMonth[@]}"
do
		echo "In month "$key" - "${birthMonth[$key]}" people have birthdays."
done

