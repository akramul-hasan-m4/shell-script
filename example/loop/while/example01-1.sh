#!/bin/sh

# initialise i
i=1

while [ $i -le 5 ]
do
  # echo i
  echo $i

  # update i
  i=$(( $i + 1 ))
done