#!/bin/bash
# This script calculates the sum of digits of any number entered through the keyboard.

read -p "Enter a number: " num

sum=0

while [ $num -gt 0 ]; do
    digit=$(($num % 10))
    sum=$(($sum + $digit))
    num=$(($num / 10))
done

echo "The sum of digits is $sum."

# Output:
# Enter a number: 45
# The sum of digits is 9.