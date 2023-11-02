#!/bin/bash

# Specify the number of times you want to run instrfwd
num_runs=1000

# Name of the output file
output_file="output_nofwd.txt"

# Clear the existing output file (if it exists)
> $output_file

# Loop to run instrfwd and store the output in the text file
for ((i=1; i<=$num_runs; i++)); do
    # Run instrfwd and capture its output
    result=$(./instrfwd)

    # Append the result to the output file
    echo "$result" >> $output_file

    echo "Run $i completed"
done

echo "All runs completed and results are stored in $output_file"
