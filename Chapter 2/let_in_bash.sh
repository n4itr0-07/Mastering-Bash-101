#!/bin/bash

# Basic arithmetic using let
:"
let is a Bash built-in function that allows us to perform simple arithmetic. 

The arithmetic expression can take several forms, which we'll go over below. However, the first part is 
always a variable into which the result is saved.
"

# The let has the following syntax:
let <arithmetic expression>

# It is important to note that if we do not use quotes around the expression, it must be written without
# spaces.
let result=6+4
echo $result #=> 10

# This time, we used quotes to space out the expression and make it more readable.
let "result = 4 + 4"
echo $result #=> 8

# incremeting the result same as let result =result+1 or let result+=1
let result++
echo $result #=> 9

# doing some multiplication
let "result = 4 * 5"
echo $result # 20

# We can also use variables in expressions
let "result = $1 + 30"
echo $result # 30 + first command line argument