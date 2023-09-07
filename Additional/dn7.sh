#!/bin/bash

if [ $# -eq 3 ]
then
case $2 in
	+)
		echo $(expr $1 + $3)
		;;
	-)
		echo $(expr $1 - $3)
		;;
	\/)
		echo $(expr $1 \/ $3)
		;;
	\*)
		echo $(expr $1 \* $3)
		;;
	*)
	echo str2 is [+,-,\*,\/]
		exit 1
		;;
		
esac
else
	echo command [str1,str2,str3], \* is \\\*
fi
