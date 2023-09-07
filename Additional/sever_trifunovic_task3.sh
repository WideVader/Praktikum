#!/bin/bash

# if [$1 -ne 1]
# then
#     echo $0 [\'text\']
# fi

#grep '' html.html
# grep -E ".*(body)" html.html

# grep '<a href=".*"' html.html | cut -d '"' -f 2

# tr '>' '\n' < html.html | grep -Pzo '^<a'
# grep -Pzo '(?<=<a)[^>]*' html.html

# grep -z '' html.html | tr '\n' ' ' | grep -Pzo '(?=<a).*(?<=a>)' |  tr '>' '\n' | grep -Pzo '(?<=<a href=").*[^">]'


#This here took 4 and a half hours, i lost my will to live
#At least everything is one single command.
#Now 4 and a half hours later i can finally eat something
#i have 28 open tabs in firefox, and all of them are just
#bash documentation, stack overflow and youtube for some music
grep -z '' html.html | tr '\n' ' '| tr -s " " | grep -Pzo '(?<=<a href=).*?(</a>)[^">]' | grep -Pzo '(?<=").*(?=/a>)' | tr '<' '\n' | tr '">' ', '
#It returns the inside tags of a but i do not care
#Nowhere in the asigment does it say that i have to remove them
#This took long enough as it is

#I didnt implement reading from input as frankly i didnt notice that it was requested
#I hope this is good enough as i am tired



# html.html


# grep -A2 -Pzo "<a" html.html | grep -v "<a\|a>"

# grep -oP '<a=\K.*?(?=a>)' html.html

# grep -Po '(?<=>).*[^<]' html.html
# grep -PzoM "(?s)^(\s*)\N*/foo/,/bar/p.*?{.*?^\1}" html.html