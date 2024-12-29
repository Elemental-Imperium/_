#!/bin/bash

# Directory containing the files
DIR="documentation/"

# Loop through all files in the directory
for FILE in "$DIR"*; do
  # Check if the file name contains a space
  if [[ "$FILE" == *" "* ]]; then
    # Replace spaces with underscores
    NEW_FILE="${FILE// /_}"
    # Rename the file
    mv "$FILE" "$NEW_FILE"
    echo "Renamed: $FILE -> $NEW_FILE"
  fi
done

echo "All files have been renamed."