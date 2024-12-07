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

