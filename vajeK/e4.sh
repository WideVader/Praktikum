##!/bin/bash

#if [ $# -ne 2 ]
#then
#	echo $0 [int] [int]
#fi

#i=$1
#j=$2

#for (( a = $i; a<=$j; a++))
#do
	#mkdir test$a
#echo $a
#done



#!/bin/bash

if [ $# -ne 2 ]
then
	echo $0 [int] [int]
fi


if [[ "$@" == *'-h'* ]]
then
	echo Help:
	echo $0 [txt1] [txt2] [txt3]
	exit 0
fi


i=$1
j=$2

if [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
echo not allowed to be lower than 0
exit 1
fi

for (( a = 1; a<=$i; a++))
do
	mkdir $a

	for (( b = 1; b<=$j; b++))
	do
		ime="$a/$b.txt"
		if [ -f $ime ]
		then
			echo Datoteka $ime obstaja
			exit 1
		fi
		if [ $# -eq 3 ] && [ -f $3 ]
		then
			cp $3 $ime
		echo
			touch $ime
		fi
		#echo >$a/$b.txt 
	done

done
	
