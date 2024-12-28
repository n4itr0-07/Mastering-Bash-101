#!/bin/bash   # shebang line

# Let's write a script that uses all concepts we have learned so far

# This script will take a number as input and check if it is even or odd

echo "Enter a number: " # prompt the user to enter a number

read number # read the input and store it in the variable number

# check if the number is even or odd

if [ $((number % 2)) -eq 0]; then # check if the number is divisible by 2
    echo "$number is even." # if the number is divisible by 2, it is even.

else 
    echo "$number is odd." # if the number is not divisible by 2, it is odd.
fi

# Run the script and enter different numbers to see if they are even or odd. Try entering negative numbers, zero, and non-numeric values to see how the script handles them.    