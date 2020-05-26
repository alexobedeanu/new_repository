#!/bin/bash
echo "For user: $USER"
i=$(find . -mtime 0 | wc -l)
echo "Number of modified files: $(($i - 1))"
var=$(find . -type f | sed 's/^.\{2\}//')
echo "===Number of lines modified per file==="
var2=$(wc -l $var)
wc -l $var
echo "======================================="
arr=($var2)
var3=$(( $(( ${arr[N-2]} )) / $(( $i - 1)) ))
echo "Average number of lines modified: $var3"
