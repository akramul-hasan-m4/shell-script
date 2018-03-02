#!/bin/sh

# function to check number of arguments passed to the script
function isArgumentPresent {
  if [ $1 -gt 0 ]
  then
    return 0	# success code
  else
    return 1	# failure code
  fi
}

# calling the function
# and passing number of arguments passed to the script
isArgumentPresent $#

# get the returned code
returnedCode=$?

# check returnedCode
if [ $returnedCode -eq 0 ]
then
  echo "Arguments present!"
else
  echo "Arguments not present!"
fi