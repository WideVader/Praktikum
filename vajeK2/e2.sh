#!/bin/bash

test() {
    a=false
    for (( i=1; i<=$1; i++))
     do
     a=false
        for (( j=2; j<$i; j++))
        do
            if (( i % j == 0 ))
            then
                a=true
            fi
        done
        if [ $a == false ]
        then
            echo $i
        fi
     done
}

if [ $# -ne 1 ]
then 
    exit 1
fi

if [[ $1 =~ ^[0-9]+$ ]]
then
    test $1
fi

