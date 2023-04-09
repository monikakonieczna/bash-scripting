#!/bin/bash

# Create a report file for a single shipping container
# Author: Monika

mkdir -p reports 
grep  W6 shipments.csv > reports/W6.csv

echo Report created.

