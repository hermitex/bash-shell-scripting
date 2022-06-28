#!/bin/bash

# Task 1 (5 marks)


if [ $# -lt 3 ] #check the number of arguments passed
	then
		echo "Expected three numbers"
		exit 1 #exit if arguments passed are less than 3
else
		#Get the sum and save it in sum
		sum=$(($1 + $2 + $3))
		#Check if sum is less than or equal to 30
		if [ $sum -le 30 ]
			#print this message if true
			then echo "The sum of $1 and $2 and $3 is $sum"
		else
			#print this message if false
			echo "Sum exceeds maximum allowable"
		fi
fi

exit 0
