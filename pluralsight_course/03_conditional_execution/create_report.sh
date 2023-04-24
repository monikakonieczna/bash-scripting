#!/bin/bash

# Create a report file for a single shipping container
# Author: Monika

if [[ ! $input_file ]]; then 
	echo "Error: Input file not configured"
	exit 1
fi

if [[ ! -e $input_file ]]; then 
	echo "Error: Input file $input_file does not exist"
	exit 1
fi

if [[ ! $1 ]]; then 
	echo "Error: missing parameter: container name"
	exit 1
fi
container="$1"

if [[ $2 ]]; then 
	directory="$2"
else
	directory="$HOME/reports"
fi

mkdir -p -- "$directory"
if grep -- "$container" "$input_file" > "$directory/${container}_report.csv"
then
	echo "Wrote report $directory/$container.csv"
else
	echo "Container $container not found in shipments.csv"
fi
echo "Wrote report $directory/${container}_report.csv"
