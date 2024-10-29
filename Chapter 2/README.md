# Conditional Statements in Bash

Bash conditional statements allow you to execute commands based on specific conditions. The most common structures are `if`, `else`, `elif`, and `case`. These are useful for handling different scenarios in a script, like checking file existence, comparing strings, or making decisions based on user input.

---

## 1. **`if` Statement**

The `if` statement runs code only if a given condition is **true**.

### Syntax:

```bash
if [ condition ]; then
    # Commands to execute if the condition is true
fi
```

- **`[ condition ]`**: The condition is evaluated inside square brackets.
- **`then`**: Specifies the block of code to run if the condition is true.
- **`fi`**: Closes the `if` block.

### Example:

```bash
if [ -f "file.txt" ]; then
    echo "File exists."
fi
```
This checks if `file.txt` exists (`-f` tests for a regular file).

---

## 2. **`if-else` Statement**

An `if-else` statement provides an alternative if the condition is **false**.

### Syntax:

```bash
if [ condition ]; then
    # Commands if condition is true
else
    # Commands if condition is false
fi
```

### Example:

```bash
if [ -d "directory" ]; then
    echo "Directory exists."
else
    echo "Directory does not exist."
fi
```
This checks if `directory` exists (`-d` tests for a directory).

---

## 3. **`if-elif-else` Statement**

The `elif` (else if) allows for multiple conditions to be tested.

### Syntax:

```bash
if [ condition1 ]; then
    # Commands if condition1 is true
elif [ condition2 ]; then
    # Commands if condition2 is true
else
    # Commands if none of the conditions are true
fi
```

### Example:

```bash
if [ -z "$1" ]; then
    echo "No argument provided."
elif [ "$1" == "hello" ]; then
    echo "Hello!"
else
    echo "Unknown argument."
fi
```
- **`-z`** checks if the string is empty.

---

## 4. **`case` Statement**

The `case` statement simplifies testing a single variable against multiple values.

### Syntax:

```bash
case expression in
    pattern1)
        # Commands if expression matches pattern1
        ;;
    pattern2)
        # Commands if expression matches pattern2
        ;;
    *)
        # Default case if no patterns match
        ;;
esac
```

### Example:

```bash
case "$1" in
    start)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        ;;
esac
```
This script checks if the first argument is `start` or `stop`.

---

## 5. **Common Test Conditions**

Bash provides various operators to evaluate conditions:

### File Tests:
- **`-f file`**: True if file exists and is a regular file.
- **`-d directory`**: True if directory exists.
- **`-r file`**: True if file is readable.
- **`-w file`**: True if file is writable.

### String Tests:
- **`-z string`**: True if string is empty.
- **`-n string`**: True if string is not empty.
- **`string1 == string2`**: True if strings are equal.
- **`string1 != string2`**: True if strings are not equal.

### Numeric Tests:
- **`-eq`**: Equal to.
- **`-ne`**: Not equal to.
- **`-lt`**: Less than.
- **`-gt`**: Greater than.

---

## 6. **Combining Conditions**

You can combine conditions using logical operators:

- **`&&`**: AND (both conditions must be true).
- **`||`**: OR (either condition can be true).

### Example:

```bash
if [ -r "file.txt" ] && [ -w "file.txt" ]; then
    echo "File is readable and writable."
else
    echo "File is not accessible."
fi
```

This checks if `file.txt` is both readable and writable.

---

## Conclusion

- **`if`**: Used for simple true/false conditions.
- **`if-else`**: Handles both true and false conditions.
- **`if-elif-else`**: Allows multiple conditions to be tested.
- **`case`**: Simplifies checking one value against many patterns.
- Combine conditions with **`&&`** and **`||`** for more complex logic.

--- 