#!/bin/sh

# display the file name
echo "The name of the script file is $0"

# display total number of arguments passed to the script
echo "Total number of arguments passed to the script = $#"

# display all the arguments using for loop
if [ $# -gt 0 ]
then
  
  echo "List of arguments:"
  for arg in $@
  do
    echo "$arg"
  done

else
  
  echo "No argument provided to the script."

fi