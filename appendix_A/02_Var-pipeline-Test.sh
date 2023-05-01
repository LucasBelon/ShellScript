#! /bin/bash

<<HEADER
Some notes about variables, pipes and the test command.
Aparently, the 'test' command can do nest stuff
HEADER

VAR="One Two Three" #There must be no spaces around
                    #the equal sign.
echo $VAR $VAR

# We can store a command's output in a var
V_DATE=$(date)
echo -e "Today is:\n$V_DATE" #the 'e' flag allows the
                             #usage of special chars

# And we can unset a var:
unset V_DATE

echo -e "Today is:\n$V_DATE"

# Command combination:
cat /etc/passwd | grep root | cut -c 1-10

# Saving output to file:
#cat /etc/passwd | grep root | cut -c 1-10 > file

<<COMMANDS
cat     show files          -n, -s
cut     extracts field      -d, -f, -c
date    displays date       -d, +'...'
find    finds files         -name, -iname, -type f, -exec
grep    finds text          -i, -v, -r, -qs, -w, -x
head    shows the start     -n, -c
printf  shows text          none
rev     reverts lines       none
sed     edits texts         -s, s/this/that/, d
seq     counts numbers      -s, -f
sort    sorts text          -n, -f, -r, -, -k, -t, -o
tail    shows the end       -n, -f, -c
tr      transform text      -d, -s, A-Z, a-z
uniq    ignore duplicates   -i, -d, -u
wc      counts text         -c, -w, -l, -L
COMMANDS

<<TEST_COMMAND
    Variable tests
Option  Description
-lt     less than
-gt     greater than
-le     less or equal than
-ge     greater or equal than
-eq     equal to
-ne     not equal to
=       string is equal
!=      string not equal
-n      non-null string
-z      null string
    File tests
Option  Description
-d      is directory
-f      is file
-r      is readable
-s      is non-void file
-w      is writable
-nt     is newer than
-ot     is older than
-ef     is equalfile
-a      logical and
-o      logical or
TEST_COMMAND





