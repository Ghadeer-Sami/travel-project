#!/bin/bash

echo "Welcome to the Travel Recommendation Program "

# Ask for the travel goal
read -p "What is the purpose of your trip? (e.g., Relaxation, Adventure, Shopping, Culture): " goal

# Ask the user if they have a specific city in mind
read -p "Do you already have a city in mind? (Leave blank if not): " city

echo ""
echo "Your input has been recorded successfully :) "
echo "--------------------------"
echo "Travel goal: $goal"

# Check if user entered a city or left it blank
if [[ -z "$city" ]]; then
    echo "Suggested city: Not specified"
else
    echo "Suggested city: $city"
fi
