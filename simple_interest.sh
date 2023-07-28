#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: \$ $interest"
}

# Input variables
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate: " rate
read -p "Enter the time period (in years): " time

# Call the function to calculate and display the simple interest
calculate_simple_interest $principal $rate $time
