#!/bin/bash
# This script finds the factorial value of any integer entered through the keyboard.

read -p "Enter a number: " num

factorial=1

for ((i=1; i<=$num; i++)); do
    factorial=$((factorial * i))
done

echo "The factorial of $num is $factorial."

# Output:
# Enter a number: 5
# The factorial of 5 is 120.