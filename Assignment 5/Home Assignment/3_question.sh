#!/bin/bash
# This script prints all prime numbers in a given range.

if [ $# -ne 2 ]; then
    echo "Error: Please provide exactly two numbers as arguments."
    exit 1
fi

start=$1
end=$2

for ((num=$start; num<=$end; num++)); do
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
        echo "$num"
    fi
done

# Output:
# bash 3_question.sh 1 10
# 2 3 5 7