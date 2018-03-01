#!/bin/sh

file="/Users/yusufshakeel/Documents/GitHub/shell-script/example/file/helloworld.txt"

# check
if [ -e $file ]
then
  echo "File exists!"
else
  echo "File does not exists!"
fi