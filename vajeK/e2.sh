#!/bin/bash

#for arg in $@
#do
#if [ $arg == "-h"]

if [[ "$@" == *'-h'* ]]
then
	echo Help:
	echo $0 [txt1] [txt2] [txt3]
	exit 1
else
	if [ $# -ne 3 ]
	then
		echo Napaka
		echo uporaba $0 [txt1] [txt2] [txt3]
		exit 1
	else
		echo $3 $2 $1
	fi
fi
