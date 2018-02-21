#!/bin/sh

# take a string from user
echo "Enter string:"
read str

s="Hello World"

# check
if [ "$str" != "$s" ]
then
  echo "$str not equal to $s."
else
  echo "$str equal to $s."
fi