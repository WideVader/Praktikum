#!/bin/bash

if [ $# -ne 1 ]
then
	echo Napaka!
	echo Uporaba: $0 fie-name
	exit 1
fi

if [ -f $1 ]
	then
		echo Dokument $1 obstaja
	else
		echo Ne Obstaja

fi
