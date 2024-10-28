greet() {
    echo "hello $1 $2"
}

# Same as above (alternate syntax)
function greet() {
    echo "hello $1 $2"
}

# Calling the function
greet "John" "Paul"