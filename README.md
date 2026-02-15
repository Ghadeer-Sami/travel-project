# Travel Recommendation Program

This project is a simple Bash script that recommends travel destinations based on the user's **travel goal** and **group size**.  
The script reads data from an external file (`Data.txt`) and filters the results using basic shell commands such as `awk`, `case`, and string processing.

---

## Features

- Interactive command‑line program  
- Supports two main travel goals:
  - **Education**
  - **Entertainment**
- Additional filtering based on:
  - Type of education (School / Higher)
  - Number of adults (≤ 9 or > 9)
- Uses `awk` to extract relevant sections from the data file
- Demonstrates Bash scripting fundamentals:
  - User input
  - String manipulation
  - Conditional statements
  - Pattern matching
  - File parsing

---

## How It Works

1. The script asks the user for:
   - Travel goal  
   - Number of adults  
   - (If education) type of education  

2. Based on the input, it searches inside **Data.txt** for the matching section.

3. The script prints the recommended destinations.

---



