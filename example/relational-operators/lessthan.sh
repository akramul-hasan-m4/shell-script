#!/bin/sh

# take a numbers from the user
echo "Enter a number: "
read a

# check
if [ $a -lt 10 ]
then
  echo "Less than 10."
else
  echo "Not less than 10."
fi