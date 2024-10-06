                                             #TODO:  Introduction to Bash and Shell


# What is Bash? Bash (Bourne Again SHell) is a Unix shell and command language. It is a command-line interpreter that lets you interact with the operating system, automate tasks, and write scripts for complex tasks. Bash is the default shell for most Linux distributions and macOS.

# Shell Commands

# Bash provides a wide range of built-in commands, such as `ls`, `pwd`, `cd`, and `rm`. You can use these commands to navigate your filesystem, list files, change directories, and delete files. For example:

# List files in the current directory:
# ls

# Change to the parent directory:
# cd ..

# Create a new directory:
# mkdir new_directory

# Delete a file:
# rm file.txt

# Bash also supports scripting, which allows you to automate complex tasks by writing shell scripts. You can create scripts to perform tasks like backup files, automate repetitive tasks, or automate the setup of a development environment.

# Writing a Bash script

# Save your script in a file (e.g., script.sh) with a `.sh` extension. For example:

#!/bin/bash
 echo "Hello, World!"

age=20
if [ $age -lt 13 ]; then
  echo "You are a child"
elif [ $age -lt 20 ]; then
  echo "You are a teenager"
else
  echo "You are an adult"
fi

#Print Calender of 2025
cal 2025



date 
# will print date
