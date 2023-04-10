#!/bin/bash -x

# Create a report file for a single shipping container
# Author: Monika

# Exercise 1: Create a variable called 'directory'
# that determines where we save our output file

# Exercise 2: Read the output directory from a command-line argument 

container="$1"
directory="$2"

mkdir -p -- "$directory"
grep -- "$container" shipments.csv > "$directory/${container}_report.csv"

echo "Wrote report $directory/${container}_report.csv"
