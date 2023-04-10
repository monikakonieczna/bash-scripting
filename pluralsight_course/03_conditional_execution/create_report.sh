#!/bin/bash

# Create a report file for a single shipping container
# Author: Monika

if [[ ! $1 ]]; then 
	echo "Error: missing parameter: container name"
	exit 1

fi

container="$1"
directory="$2"

mkdir -p -- "$directory"
if grep -- "$container" shipments.csv > "$directory/${container}_report.csv"
then
	echo "Wrote report $directory/$container.csv"
else
	echo "Container $container not found in shipments.csv"
fi
echo "Wrote report $directory/${container}_report.csv"
