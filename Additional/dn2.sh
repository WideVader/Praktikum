#!/bin/bash

if [ $1 -gt 100 ]
then
	
	if(( $1 % 2 == 0))
	then
		echo stevilo $1 je sodo stevilo
	else
		echo stevilo $1 je liho
	fi
else
	echo Stevilo $1 ni veliko stevilo
fi

date
