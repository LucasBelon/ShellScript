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
    echo "Is bigger than 10"
else
    echo "Isn't bigger than 10"
fi


