#!/usr/bin/env bash
set -eu
# Arguments
operation=$1
n=$2

# Functions
square_of_sum () {
    local sum=$((n * (n + 1) / 2))
    echo $((sum * sum))
}

sum_of_squares () {
    echo $((n * (n + 1) * (2*n + 1) / 6))
}

# Execution
case "$operation" in
    square_of_sum)
        square_of_sum
        ;;
    sum_of_squares)
        sum_of_squares
        ;;
    difference)
        sq_sum=$(square_of_sum)
        sum_sq=$(sum_of_squares)
        echo $((sq_sum - sum_sq))
        ;;
    *)
        echo "Error: Unknown operation '$operation'"
        echo "Usage: $0 {square_of_sum|sum_of_squares|difference} <number>"
        exit 1
        ;;
esac