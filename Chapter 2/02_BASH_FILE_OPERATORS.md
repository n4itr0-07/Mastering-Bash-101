# File Test Operators in Bash

Bash provides a set of **file test operators** to check different properties of files and directories. These operators help in writing conditional statements to check if a file exists, if a directory is accessible, or if certain file properties (like readability, writability, or executability) are met.

This README will cover all the common file test operators, explain their purposes, and provide code snippets for each.

---

## Table of Contents

- [File Test Operators Overview](#file-test-operators-overview)
- [Common File Test Operators](#common-file-test-operators)
  - [`-f` (File Exists)](#-f-file-exists)
  - [`-d` (Directory Exists)](#-d-directory-exists)
  - [`-e` (File or Directory Exists)](#-e-file-or-directory-exists)
  - [`-r` (Readable File)](#-r-readable-file)
  - [`-w` (Writable File)](#-w-writable-file)
  - [`-x` (Executable File)](#-x-executable-file)
  - [`-s` (Non-Empty File)](#-s-non-empty-file)
  - [`-L` (Symbolic Link)](#-l-symbolic-link)
- [Combining File Test Operators](#combining-file-test-operators)
- [Conclusion](#conclusion)

---

## File Test Operators Overview

File test operators in Bash return **true** or **false** based on file properties. These are often used in conditional statements like `if`, `elif`, and `while` to control the flow of a script.

The syntax to use a file test operator is:

```bash
if [ operator "file_or_directory" ]; then
    # Commands if condition is true
fi
```

Where:
- `operator`: The file test operator (e.g., `-f`, `-d`).
- `file_or_directory`: The path to the file or directory being tested.

---

## Common File Test Operators

### `-f` (File Exists)

**Description**: Checks if a given path refers to a regular file (not a directory, symlink, or device) and if it exists.

**Usage**:

```bash
if [ -f "file.txt" ]; then
    echo "File exists."
else
    echo "File does not exist."
fi
```

---

### `-d` (Directory Exists)

**Description**: Checks if a given path refers to a directory and if it exists.

**Usage**:

```bash
if [ -d "mydirectory" ]; then
    echo "Directory exists."
else
    echo "Directory does not exist."
fi
```

---

### `-e` (File or Directory Exists)

**Description**: Checks if a file or directory exists. This is a **generic test** that can be used for both files and directories.

**Usage**:

```bash
if [ -e "file_or_directory" ]; then
    echo "File or directory exists."
else
    echo "File or directory does not exist."
fi
```

---

### `-r` (Readable File)

**Description**: Checks if a file exists and is **readable** by the current user.

**Usage**:

```bash
if [ -r "file.txt" ]; then
    echo "File is readable."
else
    echo "File is not readable."
fi
```

---

### `-w` (Writable File)

**Description**: Checks if a file exists and is **writable** by the current user.

**Usage**:

```bash
if [ -w "file.txt" ]; then
    echo "File is writable."
else
    echo "File is not writable."
fi
```

---

### `-x` (Executable File)

**Description**: Checks if a file exists and is **executable** by the current user.

**Usage**:

```bash
if [ -x "script.sh" ]; then
    echo "File is executable."
else
    echo "File is not executable."
fi
```

---

### `-s` (Non-Empty File)

**Description**: Checks if a file exists and has a **non-zero size** (i.e., it is not empty).

**Usage**:

```bash
if [ -s "file.txt" ]; then
    echo "File is not empty."
else
    echo "File is empty."
fi
```

---

### `-L` (Symbolic Link)

**Description**: Checks if a file exists and is a **symbolic link**.

**Usage**:

```bash
if [ -L "symlink" ]; then
    echo "It is a symbolic link."
else
    echo "It is not a symbolic link."
fi
```

---

## Combining File Test Operators

You can combine multiple conditions using logical operators **`&&`** (AND) and **`||`** (OR) to create more complex checks.

- **`&&`**: Ensures both conditions are true.
- **`||`**: Ensures at least one condition is true.

### Example:

```bash
if [ -r "file.txt" ] && [ -w "file.txt" ]; then
    echo "File is both readable and writable."
else
    echo "File is not accessible properly."
fi
```

In this example, the script checks if `file.txt` is both readable and writable. If both conditions are true, the script proceeds to print that the file is accessible.

---

## Conclusion

File test operators in Bash are an essential part of writing robust scripts that can handle file and directory operations dynamically. Here’s a summary of the common operators covered:

| Operator | Description                            |
|----------|----------------------------------------|
| `-f`     | Check if a file exists and is a regular file. |
| `-d`     | Check if a directory exists.           |
| `-e`     | Check if a file or directory exists.   |
| `-r`     | Check if a file is readable.           |
| `-w`     | Check if a file is writable.           |
| `-x`     | Check if a file is executable.         |
| `-s`     | Check if a file is non-empty.          |
| `-L`     | Check if a file is a symbolic link.    |

Use these operators to write effective, condition-driven scripts that interact with the file system in a meaningful way.
