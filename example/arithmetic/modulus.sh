#!/bin/sh

# take two numbers from user
echo "Enter two numbers: "
read a b

# compute modulus result
result=`expr "$a % $b" | bc`

# print output
echo "Result: $result"
