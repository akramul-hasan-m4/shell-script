#!/bin/sh

# function
square() {

  # if argument missing
  if [ -z "$1" ]
  then
    return 1  # return error code
  fi
  
  # assign argument to variable n
  n="$1"

  # find square
  result=`expr "$n * $n" | bc -l`

  return 0    # return success code
}

# take user input
printf "Enter a number: "
read num

# call the function
square "$num"

# save the returned code from the above function call
returnCode=$?

if [ $returnCode -eq 0 ]
then
  # display the result
  printf "Square of %d = %d\n" "$num" "$result"
elif [ $returnCode -eq 1 ]
then
  printf "Error Code: $returnCode Error: Number missing!\n"
else
  printf "Error Code: $returnCode Error: Unknown!\n"
fi