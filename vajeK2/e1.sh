#!/bin/bash

test() {
    echo $(($1*$1*$1))
}

if [ $# -ne 1 ]
then 
    exit 1
fi

if [[ $1 =~ ^[0-9]+$ ]]
then
    test $1
fi

