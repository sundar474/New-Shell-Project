#!/bin/bash

# Variable declaration
GREETING="Welcome to Shell Scripting"
USER_NAME=$(whoami)

# Function to display a greeting
greet_user() {
    echo "$GREETING, $USER_NAME!"
}

# Function to perform arithmetic operations
calculate_sum() {
    echo "Enter first number: "
    read num1
    echo "Enter second number: "
    read num2
    sum=$((num1 + num2))
    echo "The sum of $num1 and $num2 is: $sum"
}

# Conditional statement
check_even_or_odd() {
    echo "Enter a number to check if it's even or odd: "
    read number
    if ((number % 2 == 0)); then
        echo "$number is even."
    else
        echo "$number is odd."
    fi
}

# Loop to display a menu
while true; do
    echo
    echo "Select an option:"
    echo "1. Greet User"
    echo "2. Calculate Sum"
    echo "3. Check Even or Odd"
    echo "4. Exit"
    read choice

    case $choice in
        1) greet_user ;;
        2) calculate_sum ;;
        3) check_even_or_odd ;;
        4) echo "Goodbye!"; break ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done