#!/bin/bash
# This script finds the maximum of three numbers provided as command line arguments.

if [ $# -ne 3 ]; then
    echo "Error: Please provide exactly three numbers as arguments."
    exit 1
fi

max=$1

if [ $2 -gt $max ]; then
    max=$2
fi

if [ $3 -gt $max ]; then
    max=$3
fi

echo "The maximum of $1, $2, and $3 is $max."

# Output:
# bash 3_question.sh 3 4 5
# The maximum of 3, 4, and 5 is 5.