#!/bin/sh

# initialise i
i=1

while [ $i -le 5 ]
do
  # echo i
  echo $i

  # update i
  i=`expr $i + 1`
done