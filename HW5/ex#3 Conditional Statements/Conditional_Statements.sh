#!/bin/bash
read -p "Enter filename to check: " filename

if [ -f "$filename" ]; then
    echo "Success : File '$filename' exists in this directory"
else
    echo "Notice : File '$filename' does not exist"
fi
