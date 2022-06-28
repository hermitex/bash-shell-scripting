#!/bin/bash

#Task 3 (5 marks)

text_file_path="$1/*" #variable to hold path

non_empty_files=0 #variable to hold number of non-empty files
empty_files=0 #variable to hold number of empty files
non_empty_dir=0 #variable to hold number of non-empty directories
empty_dir=0 #variable to hold number of empty directories

for resource in $text_file_path #loop through resources found in that path
do
    if [ -f "$resource" ] #check if a resource is a text file
    then
        if [ -s "$resource" ]; then #check if that resource is empty
            non_empty_files=$((non_empty_files+1))          #increment non_empty_files if it contains data   
        else
            empty_files=$((empty_files+1))                #increment empty_files if it does not contains data  
        fi
    fi

    if [ -d "$resource" ] #check if a resource is a directory
    then
        if [ "$(ls -A $resource)" ]; then #check if that directory is empty
            non_empty_dir=$((non_empty_dir+1))             #increment non_empty_dir if it contains data 
        else
            empty_dir=$((empty_dir+1))             #increment empty_dir if it does not contains data 
        fi
    fi      
done

#print results
echo "The $text_file_path directory contains:"
echo "$non_empty_files files that contain data"
echo "$empty_files files that are empty"
echo "$non_empty_dir non-empty directories"
echo "$empty_dir empty directories"

exit 0
