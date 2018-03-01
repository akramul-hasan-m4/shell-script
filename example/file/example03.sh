#!/bin/sh

file="/Users/yusufshakeel/Documents/GitHub/shell-script/example/file/helloworld.txt"

# check
if [ -e $file ]
then
  echo "File exists!"

  # check readable
  if [ -r $file ]
  then
    echo "File is readable."
  else
  	echo "File is not readable."
  fi

  # check writable
  if [ -w $file ]
  then
    echo "File is writable."
  else
  	echo "File is not writable."
  fi

  # check executable
  if [ -x $file ]
  then
    echo "File is executable."
  else
  	echo "File is not executable."
  fi

else
  echo "File does not exists!"
fi