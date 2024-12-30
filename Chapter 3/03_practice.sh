#!/bin/bash # shebang line

# Let's write a script that uses all concepts we have learned so far loops, conditions, and user input

# Make a unique game based on the concepts we have learned so far

echo "Welcome to the Number Guessing Game!" # print a welcome message to the user

echo "I'm thinking of a number between 1 to 10. Can you guess it?" # print a message to the user to guess a number between 1 to 10

number=5 # set the number to be guessed

while true; do # start an infinite loop

    read -p "Enter your guess: " guess # prompt the user to enter their guess

    if [ $guess -eq $number ]; then # check if the guess is correct
        echo "Congratulations! You guessed the correct number." # if the guess is correct, print a congratulatory message
        break # exit the loop
    else
        echo "Sorry, that's not the correct number. Please try again." # if the guess is incorrect, print a message to try again
    fi

done

# The script is a simple number guessing game where the user has to guess a number between 1 to 10. The script generates a random number between 1 to 10 and prompts the user to guess the number. If the user's guess is correct, a congratulatory message is displayed, and the game ends. If the guess is incorrect, the user is prompted to try again until they guess the correct number.

# Run the script and try to guess the number between 1 to 10. The script will provide feedback on whether the guess is correct or not. Keep guessing until you get the correct number.

