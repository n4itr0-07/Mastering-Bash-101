#!/bin/bash

# # Integers, strings or characters? How to create different variable data types in bash shell?
# # Let’s mess around a little bit more with the variables.

# # You can use the equal sign to create and set the value of a variable. For example, the following line will create a variable named age and will set its value to 27.

age=20

# # You can use the echo command to print the value of a variable. For example, the following line will print the value of the age variable.
echo "My age is $age years old."
# # You can also use the double quotes to print a variable value. For example, the following line will print the value of the age variable.
echo "My age is ${age} years old."

# Bash shell supports different data types for variables. Here are some of the most common variable data types:

# Integer: A variable that holds an integer value. For example, the following line will create a variable named my_integer and will set its value to 10.
my_integer=10

# String: A variable that holds a string value. For example, the following line will create a variable named my_string and will set its value to "Hello, World!".

my_string="Hello, World!"

# Character: A variable that holds a single character value. For example, the following line will create a variable named my_character and will set its value to the letter 'a'.

my_character='a'


# # Let's try some operations with these variables.

# Addition: You can add two integer variables together using the plus sign (+). For example, the following line will print the sum of the age variable and the my_integer variable.


echo "The sum of my age and my_integer is $((age + my_integer))."

# Constant variables in bash shell
# You can also create a constant variable, that is to say, a variable whose value will never change! This can be done by preceding your variable name with the readonly command:

readonly PI=3.14159

# Trying to change the value of a constant variable will result in an error.
# PI=3.1415926

