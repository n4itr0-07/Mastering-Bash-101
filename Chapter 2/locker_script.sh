# # Defining the Interpreter 
# #!/bin/bash 

# # Defining the variables
# username=""
# companyname=""
# pin=""

# # Defining the loop
# for i in {1..3}; do
# # Defining the conditional statements
#         if [ "$i" -eq 1 ]; then
#                 echo "Enter your Username:"
#                 read username
#         elif [ "$i" -eq 2 ]; then
#                 echo "Enter your Company name:"
#                 read companyname
#         else
#                 echo "Enter your PIN:"
#                 read pin
#         fi
# done

# # Checking if the user entered the correct details
# if [ "$username" = "John" ] && [ "$companyname" = "Tryhackme" ] && [ "$pin" = "7385" ]; then
#         echo "Authentication Successful. You can now access your locker, John."
# else
#         echo "Authentication Denied!!"
# fi





#!/bin/bash  # Define the interpreter as Bash

# Function to prompt the user for input with a message
prompt_for_input() {
    local prompt_message="$1"  # The prompt message to display to the user
    local input_var            # Variable to hold the user input
    echo "$prompt_message"     # Display the prompt message
    read input_var             # Read user input into input_var
    echo "$input_var"          # Return the user input as the function result
}

# Function to authenticate the user based on pre-defined credentials
authenticate_user() {
    # Prompt for and read the username, company name, and PIN
    local username="$(prompt_for_input 'Enter your Username:')"        # Get the username
    local companyname="$(prompt_for_input 'Enter your Company name:')" # Get the company name
    local pin="$(prompt_for_input 'Enter your PIN:')"                  # Get the PIN

    # Check if the entered details match the pre-defined credentials
    if [ "$username" = "John" ] && [ "$companyname" = "Tryhackme" ] && [ "$pin" = "7385" ]; then
        echo "Authentication Successful. You can now access your locker, John."  # Success message
        return 0  # Return 0 to indicate successful authentication
    else
        echo "Authentication Denied!!"  # Failure message
        return 1  # Return 1 to indicate failed authentication
    fi
}

# Function to display a menu of options to the user
display_menu() {
    echo "Select an option:"         # Display a prompt to select an option
    echo "1. Access Private Files"   # Option 1
    echo "2. View Account Details"   # Option 2
    echo "3. Change PIN"             # Option 3
    echo "4. Exit"                   # Option 4
}

# Function to display the user's account details
view_account_details() {
    echo "Username: John"                     # Display pre-defined username
    echo "Company: Tryhackme"                 # Display pre-defined company name
    echo "Access Level: Authorized User"      # Display user's access level
}

# Function to change the user's PIN
change_pin() {
    echo "Enter your current PIN:"  # Prompt for current PIN
    read current_pin                # Read the current PIN input from user

    # Check if the entered current PIN is correct
    if [ "$current_pin" = "7385" ]; then
        echo "Enter new PIN:"      # Prompt for new PIN
        read new_pin               # Read the new PIN
        echo "PIN successfully changed to $new_pin (Note: This is a simulation; the PIN reset isn't persistent)" # Display success message
    else
        echo "Incorrect PIN. Try again."  # Display error message if PIN is incorrect
    fi
}

# Main program execution starts here
if authenticate_user; then  # Call authenticate_user function and check if successful
    while true; do          # Start an infinite loop to display the menu until user exits
        display_menu        # Display the menu options
        echo "Choose an option:"  # Prompt the user to choose an option
        read choice               # Read the user's choice

        # Use a case statement to handle each menu option
        case $choice in
            1)
                echo "Accessing Private Files... (Simulated)"  # Simulate file access
                ;;
            2)
                view_account_details  # Call function to view account details
                ;;
            3)
                change_pin  # Call function to change the PIN
                ;;
            4)
                echo "Exiting... Goodbye, John!"  # Display exit message
                break  # Exit the loop and end the program
                ;;
            *)
                echo "Invalid option, please try again."  # Error message for invalid choices
                ;;
        esac
    done
else
    echo "Exiting due to failed authentication."  # Message if authentication fails
fi
