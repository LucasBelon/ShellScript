#!/bin/bash

<<table
+----------------------------------------------------+
|    if       |       for          |       while     |
|if COMMAND   |   for VAR in LIST  |   while COMMAND |
|then         |   do               |   do            |
|   COMMAND   |      COMMAND       |      COMMAND    |
|else         |   done             |   done          |
|   COMMAND   |                    |                 |
|fi           |                    |                 |
+----------------------------------------------------+
table

#VAR=$# #Receives the number of arguments
VAR=$1 #Receives the first argument


if test $VAR -gt 10
then
    echo "$VAR Is bigger than 10"
else
    echo "$VAR Isn't bigger than 10"
fi

# Another way is to use square brackets on the
# if statements. There is a difference between
# these two, better search later.

if [ $VAR -gt 10 ]
then
    echo "$VAR Is bigger than 10"
else
    echo "$VAR Isn't bigger than 10"
fi

# The spaces around [] are necessary.

# While testing "is file"
while test -f /tmp/lock
do
    echo "Script locked"
    sleep 1
done

for number in one two three
do
    echo "Counting... $number"
done

for step in $(seq 10)
do
    echo "Counting... $step"
done

i=0
while test $i -le 10
do
    i=$((i+1))
    echo "counting $i"
done

while :
do
    if test -f /tmp/lock
    then
        echo "Aguardando..."
        sleep 1
    else
        break
    fi
done


