#!/bin/sh

# take a numbers from the user
echo "Enter a number: "
read a

# check
if [ $a -gt 10 ]
then
  echo "Greater than 10."
else
  echo "Not greater than 10."
fi