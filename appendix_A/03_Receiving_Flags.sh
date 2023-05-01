#!/bin/bash

# Testing the arguments of a call

echo "This script is called $0"
echo "$# arguments received: $*"
echo "the first argument: $1"
echo "the second argument: $2"

# Aritmetics
echo $((2*3))
echo $((2+4*3-4/2))

NUM=44
echo $((NUM*2))
NUM=$((NUM+1))
echo $((NUM))
echo $NUM



