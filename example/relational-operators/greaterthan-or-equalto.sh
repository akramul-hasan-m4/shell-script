#!/bin/sh

# take a numbers from the user
echo "Enter a number: "
read a

# check
if [ $a -ge 10 ]
then
  echo "Greater than or equal to 10."
else
  echo "Less than 10."
fi