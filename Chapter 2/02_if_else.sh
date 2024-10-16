#!/bin/bash
if [ -f "README.md" ]; then
echo "File README.md Exists..."
else
echo "File README.md does not exist."
fi

# if [ -d "subdirectory" ]; then
# echo "Directory subdirectory Exists.."
# else

#TODO:  Key Parts of the Code:

# 1). #!/bin/bash:
# This is called a shebang and tells the system to use the Bash shell to execute the script.

# 2). if [ -f "README.md" ]; then:
# This checks if a file named README.md exists.
#  -f is a file test operator in Bash that checks if a given path is a regular file (i.e., not a directory, device, or symlink) and if it exists.

# 3). echo "File README.md Exists...":

# If the -f condition is true (i.e., the file exists and is a regular file), this line will be executed, printing the message.

# 4). else:
# If the file doesn't exist, the block after else will run.

# 5). echo "File README.md does not exist.":
# This message is printed if the file does not exist.

