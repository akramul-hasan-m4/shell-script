#!/bin/sh

# function
greetings() {
  echo "Hello $1"
}

# take user name
printf "Enter your name: "
read name

# call the function
greetings "$name"