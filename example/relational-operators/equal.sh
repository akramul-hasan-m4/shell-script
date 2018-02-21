#!/bin/sh

# take two numbers from the user
echo "Enter two numbers: "
read a b

# check
if [ $a -eq $b ]
then
  echo "Numbers are equal."
else
  echo "Not equals."
fi