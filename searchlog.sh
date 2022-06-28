#!/bin/bash

#Task 4 (5 marks)

file="access_log.txt"
read -p "Enter pattern to search: " search_pattern
echo -e "\nOptions:\n\t1. Full word match\n\t2. Any match\n\t3. Inverted match\n"
read -p "Choose one option e.g 1: " option

# if [ -f "$file" ]
# then
#     result=$(grep -i "$search_pattern" "$file")
#     echo "$result"
# fi

if [ "$option" -eq 1 ]
then
    echo "Searching for full word match..."
# fi
elif [ "$option" -eq 2 ]
then
    echo "Searching for any match..."
# fi
elif [ "$option" -eq 3 ]
then
    echo "Searching for Inverted match..."
else
    echo "Ivalid option"
fi
