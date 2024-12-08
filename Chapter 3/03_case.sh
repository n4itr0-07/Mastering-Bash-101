# cases in bash

echo "Enter a number between 1 and 3"

read number

case $number in
    1)
        echo "You entered one."
        ;;
    2)
        echo "You entered two."
        ;;
    3)
        echo "You entered three."
        ;;
    *)
        echo "You did not enter a number between 1 and 3."
        ;;
esac

# The case statement is a powerful alternative to the if statement. It is used to match a value against a list of patterns. The syntax is as follows:

# case expression in

#     pattern1 )
#         statements ;;
#     pattern2 )
#         statements ;;
#     ...
#     patternN )

#         statements ;;
#     * )
#         default statements ;;

# esac

# The expression is evaluated and compared to the patterns. If a match is found, the statements following the pattern are executed

# The * pattern is a wildcard that matches any value. It is used as the default case when no other pattern matches.

# The case statement is useful when you have multiple conditions to check against a single value. It is more concise and easier to read than a series of if-elif-else statements.

# In this example, the user is prompted to enter a number between 1 and 3. The input is read and stored in the variable number. The case statement checks the value of number against the patterns 1, 2, and 3. If a match is found, the corresponding message is displayed. If the value does not match any of the patterns, the default message is displayed.

# The case statement is a versatile tool for handling multiple conditions in a script. It can be used to simplify complex logic and improve readability.

# Run the script and enter different numbers to see the output for each case. Try entering values outside the range of 1 to 3 to see the default message.

# The case statement is a powerful alternative to the if statement. It is used to match a value against a list of patterns. The syntax is as follows:

# one more example of case statement in bash script for files and directories is as follows:

echo "Enter a file or directory name"

read name

if [ -f $name ]; then
    echo "$name is a file."
elif [ -d $name ]; then
    echo "$name is a directory."
else
    echo "$name is neither a file nor a directory."
fi

# The case statement can also be used to check if a value is a file, directory, or neither. In this example, the user is prompted to enter a file or directory name. The script checks if the input is a file using the -f flag, a directory using the -d flag, or neither. The appropriate message is displayed based on the result.

# Run the script and enter the name of an existing file or directory to see the output. Try entering a name that does not exist to see the default message.

# The case statement is a versatile tool for handling multiple conditions in a script. It can be used to simplify complex logic and improve readability.

