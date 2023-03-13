#!/bin/bash
# This script checks whether a given number is prime or not.

if [ $# -ne 1 ]; then
    echo "Error: Please provide exactly one number as an argument."
    exit 1
fi

num=$1
is_prime=1

if [ $num -le 1 ]; then
    is_prime=0
else
    for ((i=2; i*i<=$num; i++)); do
        if [ $(($num % $i)) -eq 0 ]; then
            is_prime=0
            break
        fi
    done
fi

if [ $is_prime -eq 1 ]; then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi

# Output:
# bash 4_question.sh 897
# 897 is not a prime number.