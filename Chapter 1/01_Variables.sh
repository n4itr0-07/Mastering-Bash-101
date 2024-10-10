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


#TODO: ***********************************************************************************************************************************

# Before you go, try turning Hello World script to a smart HelloWorld script
# Now since you just learned how to do command substitution, it would make sense to visit the Hello World script one last time to perfect it!

# Last time, you asked the user to enter his/her name so the script greets them; this time, you are not going to ask, your script already knows it!

# Use the whoami command along with command substitution to greet whoever run the script:

echo "Hello, $(whoami)!"


#TODO: ***********************************************************************************************************************************

# Now, let's create a simple calculator script.

# Write a script that takes two numbers as command line arguments and performs addition, subtraction, multiplication, and division on them.

# The script should check if the correct number of arguments are provided and if they are numbers. If not, it should display an error message and exit.

# For example, if you run the script like this:


# ./calculator.sh 5 3

# It should output:

# 5 + 3 = 8
# 5 - 3 = 2
# 5 * 3 = 15
# 5 / 3 = 1.66666666667

# Remember to handle division by zero errors and display an appropriate error message.

#TODO: ***********************************************************************************************************************************

# Lastly, let's create a simple script that prints the current date and time in a specific format.

# Write a script that displays the current date and time in the format:

# Monday, January 01, 2022 12:34:56 PM

# You can use the date command along with some formatting options to achieve this.

# For example, if you run the script like this:


# ./current_date_time.sh

# It should output:

# Monday, January 01, 2022 12:34:56 PM

# Remember to handle different time zones and display the date and time in the specified format.

#TODO: ***********************************************************************************************************************************

# Now, let's create a simple script that prints the current weather in a specific location.

# Write a script that uses an API to fetch the current weather data for a given location and displays it in a human-readable format.

# You can use the OpenWeatherMap API to fetch the weather data. You will need to sign up for an API key and replace the YOUR_API_KEY placeholder with your actual API key.

# For example, if you run the script like this:


# ./current_weather.sh New York

# It should output:

# Current weather in New York:
# Temperature: 29°C (86°F)
# Description: clear sky
# Humidity: 87%
# Wind speed: 3.1 m/s (10.8 km/h)

# Remember to handle errors and display appropriate error messages.

#TODO: ***********************************************************************************************************************************

# Lastly, let's create a simple script that generates a random password.

# Write a script that generates a random password with a specified length and includes at least one uppercase letter, one lowercase letter, one digit, and one special character.

# You can use the tr command along with some randomization options to achieve this.

# For example, if you run the script like this:


# ./generate_password.sh 12

# It should output:

# k%hX9E^Y!

# Remember to handle errors and display appropriate error messages.

#TODO: ***********************************************************************************************************************************

# Now, let's create a simple script that compresses a given directory using the gzip command.

# Write a script that takes a directory path as a command line argument and compresses it using the gzip command.

# You can use the gzip command along with the -r option to recursively compress all files in the specified directory.

# For example, if you run the script like this:


# ./compress_directory.sh /path/to/directory

# It should output:

# Compressing directory /path/to/directory...
# Directory /path/to/directory compressed to /path/to/directory.tar.gz

# Remember to handle errors and display appropriate error messages.

#TODO: ***********************************************************************************************************************************

# Lastly, let's create a simple script that extracts a compressed file using the gzip command.

# Write a script that takes a compressed file path as a command line argument and extracts it using the gzip command.

# You can use the gzip command along with the -d option to recursively extract all files from the specified compressed file.

# For example, if you run the script like this:


# ./extract_compressed_file.sh /path/to/compressed_file.gz

# It should output:

# Extracting compressed file /path/to/compressed_file.gz...
# Extracted directory /path/to/extracted_directory

# Remember to handle errors and display appropriate error messages.