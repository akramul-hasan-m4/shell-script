#!/bin/sh

# get the first number
printf "Enter first integer number: "
read a

# get the second number
printf "Enter second integer number: "
read b

# if b is 0
if [ $b == 0 ]
then
  printf "Division by 0 not allowed.\n"
  exit	# exit the script
fi

# perform division
result=`expr "$a / $b" | bc -l`

printf "%d / %d = %.5f\n" "$a" "$b" "$result"