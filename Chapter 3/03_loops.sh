# Loops in Bash

# For loop

for i in 1 2 3 4 5
do
    echo "Looping ... number $i"
done

# While loop

counter=0
while [ $counter -lt 5 ]
do
    echo "Looping ... number $counter"
    ((counter++))
done

# Until loop

counter=0
until [ $counter -ge 5 ]
do
    echo "Looping ... number $counter"
    ((counter++))
done

# Nested loops

for i in 1 2 3 4 5
do
    for j in 1 2 3
    do
        echo "Looping ... number $i $j"
    done
done

# Looping through files

for file in *.sh
do
    echo "Looping ... file $file"
done

# Looping through files with spaces in their names

for file in *.sh

do
    echo "Looping ... file $file"
done


