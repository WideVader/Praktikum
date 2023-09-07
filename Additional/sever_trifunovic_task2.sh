#!/bin/bash
sort -k 4n -o ordered_expenses.txt expenses_people.csv 

read -p 'Enter username: ' a1

a2=`grep -w $a1 ordered_expenses.txt`

if [ "$a2" != "" ]
then 
    echo $(cut -d ' ' -f 3,4 <<<"$a2")
else
    echo "the name cannot be found"
fi

read -p 'Are you interested to know how often a certain pattern occurs in the file[Y/n]: ' a5
if [[ $a5 =~ [yY][eE][sS]|[yY]|^$ ]]
then
    read -p 'enter the pattern: ' a6


#this section took half an hour to figure out how to pipe with wc, turns out grep has -c in it.
#my disappointment is immeasurable and my day is ruined
    #echo `grep -c $a6 ordered_expenses.txt`
    echo `grep -i -o $a6 ordered_expenses.txt | wc -l`
    
    #echo `grep $a6 ordered_expenses.txt | wc -m`
    #"nonome" | grep -o echo | wc -l
else
    echo goodbye
    exit 1;
fi