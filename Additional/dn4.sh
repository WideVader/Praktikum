#!/bin/bash

if [ $1 -ge 18 ]
then
	echo Lahko vozite avto, ce imate izpit znaj!
elif [ $2 == "yes" ] && [ $1 -gt 15 ]
then
	echo Lahko vozite avto ob spremstvu starsev
else
	echo Ne smete voziti avtomobila
fi
