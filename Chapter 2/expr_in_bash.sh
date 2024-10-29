#!/bin/bash

# Basic arithmetic using expr
:"
Because expr is a binary rather than a shell builtin, this method may be slow. In a large for-loop, 
it will fork a new process, which is undesirable. Furthermore, depending on the implementation, the behavior 
of expr may differ between systems.

In contrast to let, you do not need to enclose the expression in quotes. There must also be spaces between 
the expression's items. To save the output to a variable, like any other command you can use command 
substitution to capture the output of expr into a variable.
"

# expr syntax
expr item1 operator item2

# Note that there must be spaces between the items and no quotes.
expr 7 + 5 #=> 13

expr "6 + 3" #=> 6 + 3


# if you put qoutes the expression will not be evaluated but printed instead.
expr 3+2 #=> 3+2

# The asterisk has special meaning in bash so we must escape it using \ to remove its special meaning.
expr 5 \* 3

# modulus operator demonstration
expr 15 % 2 #=> 1

# using command substitution to save output to a variable
result=$( expr 15 - 2 )
echo $result #=> 13