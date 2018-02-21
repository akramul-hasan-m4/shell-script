#!/bin/sh

# take a numbers from the user
echo "Enter a number: "
read a

# check
if [ $a -le 10 ]
then
  echo "Less than or equal to 10."
else
  echo "Greater than 10."
fi