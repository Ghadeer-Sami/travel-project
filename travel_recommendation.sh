#!/bin/bash

# This script recommends travel destinations based on user's travel goal and group size.
# The data is pulled from a separate file using basic shell commands we learned.

echo "Welcome to the Travel Recommendation Program!"

# Ask the user for the goal of the trip
read -p "Enter your travel goal (e.g., Education, Entertainment): " goal
goal_lower=$(echo "$goal" | tr '[:upper:]' '[:lower:]')

# Ask the user for number of adults
read -p "Enter number of adults going on the trip: " num_adults

# File that contains the recommendations
file="Data.txt"

echo ""
echo "Fetching suggestions for you..."
echo "--------------------------------"

# Case to check the goal and filter based on content in the file
case $goal_lower in
  "education")
    # For education, ask type of education
    read -p "Type of education (School/Higher): " edu_type
    edu_type_lower=$(echo "$edu_type" | tr '[:upper:]' '[:lower:]')

    if [[ "$edu_type_lower" == "school" ]]; then
      # Show School Education recommendations
      awk '/## Type: School Education/{flag=1; next} /##/{flag=0} flag && NF' "$file"
    elif [[ "$edu_type_lower" == "higher" ]]; then
      # Show Higher Education recommendations
      awk '/## Type: Higher Education/{flag=1; next} /##/{flag=0} flag && NF' "$file"
    else
      echo "Sorry, type not recognized. Please enter School or Higher."
    fi
    ;;

  "entertainment")
    # For entertainment, check the number of adults
    if (( num_adults > 9 )); then
      awk '/## Adults > 9/{flag=1; next} /##/{flag=0} flag && NF' "$file"
    else
      awk '/## Adults ≤ 9/{flag=1; next} /##/{flag=0} flag && NF' "$file"
    fi
    ;;

  *)
    echo "Sorry, this goal is not available in the current version."
    ;;
esac

echo "--------------------------------"
echo "Thank you for using our program!"
