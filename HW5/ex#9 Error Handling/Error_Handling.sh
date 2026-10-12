#!/bin/bash
read -p "Enter filename to read : " filename

if [ -f "$filename" ]; then 
    echo "--- Content of $filename ---"
    cat "$filename"
else
    echo "Errro : File '$filename' does not exists or is not a regular file." >&2
    exit 1
fi
