#!/bin/bash
# A simple calculator using shell scripting

# Define a function to display the menu options
display_menu () {
  echo "Welcome to the calculator"
  echo "Please choose an option:"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
}

# Define a function to perform the calculation based on the user's choice
calculate () {
  # Read the user's choice
  read -p "Enter your choice: " choice

  # Validate the choice
  if [[ $choice -lt 1 || $choice -gt 5 ]]; then
    echo "Invalid choice. Please try again."
    calculate
  fi

  # Exit if the choice is 5
  if [[ $choice -eq 5 ]]; then
    echo "Thank you for using the calculator. Goodbye!"
    exit 0
  fi

  # Read the two numbers from the user
  read -p "Enter the first number: " num1
  read -p "Enter the second number: " num2

  # Perform the calculation based on the choice and display the result
  case $choice in
    1) result=$((num1 + num2))
       echo "$num1 + $num2 = $result";;
    2) result=$((num1 - num2))
       echo "$num1 - $num2 = $result";;
    3) result=$((num1 * num2))
       echo "$num1 * $num2 = $result";;
    4) result=$((num1 / num2))
       echo "$num1 / $num2 = $result";;
    *) echo "Something went wrong. Please try again.";;
  esac

  # Ask the user if they want to continue or exit
  read -p "Do you want to continue (y/n)? " answer

  # Validate the answer
  if [[ $answer != "y" && $answer != "n" ]]; then
    echo "Invalid answer. Please try again."
    calculate
  fi

  # Continue or exit based on the answer
  if [[ $answer == "y" ]]; then
    calculate
  else
    echo "Thank you for using the calculator. Goodbye!"
    exit 0
  fi
}

# Call the display_menu function to show the menu options
display_menu

# Call the calculate function to perform the calculation
calculate
