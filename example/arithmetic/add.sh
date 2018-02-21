#!/bin/sh

# take two integers from the user
echo "Enter two integers: "
read a b

# perform addition
result=`expr $a + $b`

# show result
echo "Result: $result"
