#!/bin/bash  # shebang line

# Let's write a script that uses all concepts we have learned so far loops, conditions, and user input

# Make a script for file system operations

echo "Enter a file or directory name: " # prompt the user to enter a file or directory name

read name # read the input and store it in the variable name

# check if the input is a file or directory

if [ -f $name ]; then # check if the input is a file
    echo "$name is a file. " # if the input is a file, print that it is a file

elif [ -d $name ]; then # check if the input is a directory
    echo "$name is a directory. " # if the input is a directory, print that it is a directory

else
    echo "$name is neither a file nor a directory. " # if the input is neither a file nor a directory, print that it is neither a file nor a directory
fi

# Now Using Loop to list all files and directories in the current directory

echo "Listing all files and directories in the current directory: " # print a message to indicate that we are listing all files and directories in the current directory

for item in *; do # loop through all items in the current directory
    echo $item # print the name of each item
done

# Run the script and enter different file and directory names to see if they are files or directories. Try entering non-existent names to see the default message. Also, observe the list of files and directories in the current directory.