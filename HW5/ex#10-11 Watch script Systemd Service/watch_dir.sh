#!/bin/bash

WATCH_DIR="HOME/watch"
mkdir -p "WATCH_DIR"

echo "Initiate monitoring dirictory : $WATCH_DIR"

while true; do 
    
    for filepath in "WATCH_DIR"/*; do
        if [ -f "$filepath" ]; then
            filename=$(basename "$filepath")
            [[ "$filename" == *.back ]] && continue

            sleep 0.2

            echo "----------------------------------------"
            echo "New file detected : $filename"
            echo "Content : "
            cat "$filepath"
            echo "----------------------------------------"

            mv "$filepath" "$filepath.back"
            ehco "File renamed : $filename.back"
        fi
    done
    
    sleep 2
done