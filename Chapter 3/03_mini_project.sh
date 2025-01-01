#!/bin/bash # shebang line

# Project Disk Usage Checker

# Write a script that checks the disk usage of a directory and displays a message based on the disk usage percentage.

# Prompt the user to enter a directory path

read -p "Enter the directory path: " directory # prompt the user to enter a directory path and store it in the variable directory. -p flag is used to display a prompt message.

# Check if the directory exists

if [ -d "$directory" ]; then # check if the directory exists using the -d flag. If the directory exists, proceed with the script.
    # Calculate the disk usage percentage of the directory
    disk_usage=$(du -sh $directory | awk '{print $1}') # calculate the disk usage of the directory using the du command. The -s flag summarizes the disk usage of the directory, and the -h flag displays the output in human-readable format. The output is then piped to awk to extract the disk usage value.
    disk_usage_percentage=$(df -h $directory | awk 'NR==2{print $5}' | tr -d '%') # calculate the disk usage percentage of the directory using the df command. The -h flag displays the output in human-readable format. The output is then piped to awk to extract the disk usage percentage value, and tr is used to remove the '%' symbol.

    # Display a message based on the disk usage percentage
    if [ $disk_usage_percentage -lt 50 ]; then # check if the disk usage percentage is less than 50%. If true, display a message indicating low disk usage.
        echo "Disk usage for $directory is low: $disk_usage ($disk_usage_percentage%)" # display a message indicating low disk usage and the disk usage percentage.
    elif [ $disk_usage_percentage -ge 50 ] && [ $disk_usage_percentage -lt 80 ]; then # check if the disk usage percentage is between 50% and 80%. If true, display a message indicating moderate disk usage.
        echo "Disk usage for $directory is moderate: $disk_usage ($disk_usage_percentage%)" # display a message indicating moderate disk usage and the disk usage percentage.
    else # if the disk usage percentage is greater than or equal to 80%, display a message indicating high disk usage.
        echo "Disk usage for $directory is high: $disk_usage ($disk_usage_percentage%)" # display a message indicating high disk usage and the disk usage percentage.
    fi
else # if the directory does not exist, display an error message.
    echo "Error: Directory does not exist." # display an error message indicating that the directory does not exist.
fi

# The script prompts the user to enter a directory path and checks if the directory exists. If the directory exists, it calculates the disk usage percentage of the directory and displays a message based on the disk usage percentage. The script categorizes the disk usage as low, moderate, or high based on the percentage.

