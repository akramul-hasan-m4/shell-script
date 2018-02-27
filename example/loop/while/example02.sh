#!/bin/sh

# for the rows
r=1

while [ $r -le 4 ]
do

  # for the output
  count=1
  
  # for the column
  c=1

  while [ $c -le $r ]
  do
  	# print the value
  	printf "$count "

    # update count
    count=$(( $count + 2 ))

    # update c
    c=$(( $c + 1 ))
  done

  # go to new line
  printf "\n"

  # update r
  r=$(( $r + 1 ))
  
done