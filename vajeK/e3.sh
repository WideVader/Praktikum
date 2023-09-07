#!/bin/bash

if [ -d $1 ]
then
	cd $1
	pwd
fi

if [ -f $1 ]
then
	if [ -x $1 ]
	then
		echo it is executable
	fi
#velikost=$( wc -c $1 )
	stat -c%s index.html
	exit 1
fi
