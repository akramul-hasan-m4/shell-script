#!/bin/sh

# take two numbers from the user
echo "Enter two numbers: "
read a b

# check
if [ $a -ne $b ]
then
  echo "Numbers are not equal."
else
  echo "Numbers are equal."
fi