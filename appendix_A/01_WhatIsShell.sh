#! /bin/bash
<<WhatIsShell
Shell is a slave that allows the comunication
between the user and the machine. Just like the
diagram below:

+---------+
|  user   |
|    |    |
|    v    |
|  shell  |
|    |    |
|    v    |
| kernel  |
|    |    |
|    v    |
|hard disk|
+---------+

Shell has it's commands. In interactive mode we
can ask about the date with the date command.
In shellscripts we can save a sequence of command
to run them in a stroke.

The first line of a script in linux dictates the 
program that will read the script. if it is a script
in python, it would be #! /bin/python3.
The #! is called hash bang, or shebang.
We can comment lines with #, and we can comment also
in the same line of a command, but everything after
the sign becames a comment and is not executed.

# This is a valid comment
command # and so is this

the last comment method is to comment a block.
We can give a name to our block and fill it with text.

<<Comment
Text text text
text text text
Comment

We open the block and close it. And that's it.


A good script should have:
- A proper name
- Good header text
- Good comments
- Good indentation
- Good spaces

At last, we can break a command that should be written
in more than one line into many with the backslash.
If a command would be
seek a command
we can do as it follows
seek \
a \
command
And the effect must be the same.
WhatIsShell

# 01_WhatIsShell - An shellscript example.
# Author - Lucas Gouveia Belon

# Asks to the user a confirmation before
# it continues.
echo \
"I'll seek system informations, should I continue? [Y/n]"
read ANSWER

# if the answer is "no" we interrupt the script.
test "$ANSWER" = "n" && exit

# Running the date command
echo "Time and Date:"
date
echo

# df shows the free space in the disk
echo "Disk usage:"
df -h
echo
