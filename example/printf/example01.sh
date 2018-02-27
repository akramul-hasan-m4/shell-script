#!/bin/sh

# take user name
printf "Enter name: "
read name

# take user score
printf "Enter score: "
read score

# display result
echo "---Result---"
printf "Name: %s\n" "$name"
printf "Score: %d\n" "$score"