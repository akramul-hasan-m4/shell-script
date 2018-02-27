#!/bin/sh

# simple interest function
simpleInterest () {
  p="$1"
  r="$2"
  t="$3"
  si=`expr "($p * $r * $t)/100" | bc -l`
}

# take user input
printf "Enter Principal: "
read pr

printf "Enter Rate [0-100]: "
read rt

printf "Enter Time [in years]: "
read tm

# call function
simpleInterest $pr $rt $tm

printf "Simple Interest: %.3f\n" "$si"