#!/bin/bash

# Function to remove the `data/` prefix from specified attributes
update_data() {
  local file="$1"
  local temp_file=$(mktemp)

  # Remove data/ prefix
  sed -E 's#(href|src|data-slug)="([^"]*)data/([^"]*)"#\1="\2\3"#g' "$file" > "$temp_file" && mv "$temp_file" "$file"
  # Update the href attributes that contain ../.././Клубы to ../Клубы
  sed -E 's#href="\.\./\.\./\./(Клубы/[^"]*)"#href="../\1"#g' "$file" > "$temp_file" && mv "$temp_file" "$file"
}

# Function to process all .html files in a directory
process_directory() {
  local dir="$1"

  # Check if the directory exists
  if [[ ! -d "$dir" ]]; then
    printf "Error: '%s' is not a directory.\n" "$dir" >&2
    return 1
  fi

  # Find all .html files and process them with the two functions
  find "$dir" -type f -name "*.html" -print0 | while IFS= read -r -d $'\0' file; do
    update_data "$file"
  done
}

# Main function to validate input and initiate processing
main() {
  local target="$1"

  # Check if the target directory is provided
  if [[ -z "$target" ]]; then
    printf "Usage: %s <directory>\n" "$0" >&2
    exit 1
  fi

  # Start processing the directory
  process_directory "$target"
}

# Execute the script with the provided arguments
main "$@"
