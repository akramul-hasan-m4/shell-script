#!/bin/sh

file="/Users/yusufshakeel/Documents/GitHub/shell-script/example/file"

# check
if [ -d $file ]
then
  echo "Directory exists!"
else
  echo "Directory does not exists!"
fi