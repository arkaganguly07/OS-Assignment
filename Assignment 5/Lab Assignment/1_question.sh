#!/bin/bash

echo "Enter a number: "
read num

if (( $num % 2 == 0 ))
then
	echo "$num is even"
else
	echo "$num is odd"
fi

# Output
# Enter a number:
# 34
# 34 is even