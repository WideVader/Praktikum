#!/bin/bash
# Vzorec skripte


#



# ============ Write a bash script that return number of specific word repetitions in a file ============
# Write a script that takes a filename and 3 keywords. It should grep in the file
# for all 3 keywords and display for each keyword the number of matches
# followed by the line numbers where the matches did occur.
#   • No other output on stdout should be produced by the script
#   • If the file cannot be read the script should exit with a return code 1, else with code 0
#   (see help exit if you do not know the exit command)
#   • Count the number of characters excluding comments
# var1=0
# var2=0
# var3=0

# if [ $# -eq 4 ]
# then
#     if [ -r $1 ] && [ -f $1 ]
#     # special way to do it
#     # if [ -r $1 -a -f $1 ]
#     then
#         var1=$(grep -o $2 $1 | wc -l)
#         var2=$(grep -o $3 $1 | wc -l)
#         var3=$(grep -o $4 $1 | wc -l)

#         echo Word $2 occurs $var1 times on lines $(sed -n "/$2/=" $1).
#         echo Word $3 occurs $var2 times on lines $(sed -n "/$3/=" $1).
#         echo Word $4 occurs $var3 times on lines $(sed -n "/$4/=" $1).
#         echo Number of caracters wihtout comments $(grep -v '#' $1 | wc -m)
#     else
#         exit 1
#     fi
# fi



# ============ Write a bash script that produces its source code as output when executed ============
# cat $0


# ============ adding all digits of a number ============
# var=$1
# var2=0
# lenVar=0

# while [ $lenVar -lt ${#var} ]
# do
#     var2=$(( $var2 + ${1:$lenVar:1} ))
#     ((lenVar++))
# done
# echo $var2


# ============ very broken reverse of input ============
# parameter expansion, ${parameter:offset:length}
# var=$1
# var2=""
# lenVar=${#var}

# while [ $lenVar -ge 0 ]
# do
#     var2="$var2${1:$lenVar:1}"
#     ((lenVar--))
# done
# echo $var2


# ============ while loop example ============
# number=5

# while [ $number -gt 0 ]
# do
#     echo $number
#     ((number--))
# done


# ============ basically switch statment simle calculator ============
# if [ $# -eq 3 ]
# case $2 in 
#         +)
#         echo $(( $1 + $3 ))
#         ;;
#         -)
#         echo $(( $1 - $3 ))
#         ;;
#         x)
#         echo $(( $1 * $3 ))
#         ;;
#         /)
#         if [ $3 -ne 0 ]
#         then
#         echo $(( $1 / $3 ))
#         else
#         echo "Can't divide by 0"
#         fi
#         ;;
#         *)
#         echo "Something went wrong."
# esac


# ============ switch statment basically ============
# case $1 in 
#         start)
#         echo starting...
#         ;;
#         stop)
#         echo stopping...
#         ;;
#         restart)
#         echo restarting...
#         ;;
#         *)
#         echo wha?...
#         ;;
# esac


# ============ getting the max value of 3 arguments ============
# max=$1
#
# if [ $# -eq 3 ]
# then
#     # for (( i=1; i<=3; i++ ))
#     for i in $@
#     do
#         if [ $i -gt $max ]
#         then
#             max=$i
#         fi
#     done
#     echo $max
# else
#     echo "You need to provide 3 arguments"
# fi


# ============ if command with 2 options ============
# if [ $# -gt 1 ] && [ $# -lt 3 ]
# then
#     echo $(( $1 + $2 ))
# else
#     echo "You need to provide 2 arguments"
# fi


# ============ basic addition ============
# a=$1
# b=$2
# c=$(($a+$b))
# echo $c

# cat /dev/stdin | cut -d' ' -f 2,3 | sort