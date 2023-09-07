#!/bin/bash

if [ $# -ne 4 ]
then
	echo Napaka
	echo uporaba $0  doc b1 b2 b3
	exit 1
fi


if [ -r $1 ]
then
	lines_key1=$( grep -nw $2 $1 | cut -d: -f1 )
	lines_key2=$( grep -nw $3 $1 | cut -d: -f1 )
	lines_key3=$( grep -nw $4 $1 | cut -d: -f1 )
	echo Vrstice\: $lines_key1
	echo Vrstice\: $lines_key2
	echo Vrstice\: $lines_key3


	cnt_key1=$( grep -cw $2 $1 )
	cnt_key2=$( grep -cw $3 $1 )
	cnt_key3=$( grep -cw $4 $1 )
	echo beseda $2 se u besedilu pojavi $cnt_key1-krat
	echo beseda $3 se u besedilu pojavi $cnt_key2-krat
	echo beseda $4 se u besedilu pojavi $cnt_key3-krat
	exit 1
else
	echo Nimate pravic za branje datoteke $1
	exit 1
fi

