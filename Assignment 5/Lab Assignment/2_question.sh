#!/bin/bash
# This script checks if a year is a leap year or not.
# If no argument is supplied, the current year is assumed.

echo "Enter a year: "
read year

if [[ -z $year ]]; then
    year=$(date +%Y)
fi

if (( ("$year" % 400) == "0" )) || (( ("$year" % 4 == "0") && ("$year" % 100 != "0") )); then
    echo "$year is a leap year."
else
    echo "$year is not a leap year."
fi

# Output:
# Enter a year:
# 2002
# 2002 is not a leap year.