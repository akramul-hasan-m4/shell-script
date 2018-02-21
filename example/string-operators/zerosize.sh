#!/bin/sh

# take a string from user
echo "Enter string:"
read str

# check
if [ -z "$str" ]
then
  echo "String size equal to 0."
else
  echo "String size not equal to 0."
fi