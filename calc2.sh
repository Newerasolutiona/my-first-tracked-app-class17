#!/bin/bash

echo "Welcome to my super calculator"

sleep 3

echo "enter first number "

read -p "first number: " num1

#Check if user input is a valid number
case $num1 in
	''|*[!0-9]*)
		echo "$num1 is not a valid number"
		exit
esac

echo "enter second number "

read -p "second number: " num2

#Check if user input is a valid number
case $num2 in
	''|*[!0-9]*)
		echo "$num2 is not a valid number"
		exit
esac

echo "enter operator "

read op

echo "The result of $num1 and $num2 is $(($num1 $op $num2))"
