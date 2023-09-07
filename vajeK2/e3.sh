#!/bin/bash

test() {
    a=0
    for (( i=1; i<=$1; i++))
    do
        if (( i % 3 == 0 )) && (( i % 5 != 0 ))
        then
        echo $i
            a=$((i+a))
        fi
        if (( i % 5 == 0 ))
        then
        echo $i
            a=$((i+a))
        fi
        #  a=false
        #     for (( j=2; j<$i; j++))
        #     do
        #         if (( i % j == 0 ))
        #         then
        #             a=true
        #         fi
        #     done
        #     if [ $a == false ]
        #     then
        #         echo $i
        #     fi
    done
    echo svota 3,5: $a
}



test2() {
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
    test2 $1
    b=0
    for (( k=1; k<=$1; k++))
    do
        b=$((k+b))
    done
    echo sum: $b
fi

