#!/bin/sh

# take a number from the user
echo "Enter a number: "
read a

# check
if [ `expr $a % 2` != 0 -o $a -lt 10 ]
then
  echo "$a is either or and less than 10."
else
  echo "$a failed the test."
fi