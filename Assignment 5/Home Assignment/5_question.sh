#!/bin/bash
# This script calculates Rajesh's gross salary and take home salary.

read -p "Enter Rajesh's basic salary: " basic

da=$($basic * 0.52)
hra=$($basic * 0.15)
cpf=$(($basic + $da) * 0.12)
gross=$($basic + $da + $hra)
take_home=$($gross - $cpf)

echo "Rajesh's gross salary is $gross."
echo "Rajesh's take home salary is $take_home."

# Output:
