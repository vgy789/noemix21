#!/bin/bash

# Global variable
SEARCH_DIR="$1"

# Function to replace keys in a file
replace_keys_in_file() {
    local file="$1"

    printf "Processing file: %s\n" "$file"

    # Replace keys in the file
    sed -i \
        -e 's/href="data\//href="/g' \
        -e 's/aria-label="data\//aria-label="/g' \
        -e 's/data-href="data\//data-href="/g' \
        "$file"

    # printf "Updated file: %s\n" "$file"
}

# Process files recursively
process_files_recursive() {
    local dir="$1"

    if [[ ! -d "$dir" ]]; then
        printf "Error: Directory %s does not exist.\n" "$dir" >&2
        return 1
    fi

    # Find all files and process them
    find "$dir" -type f | while IFS= read -r file; do
        replace_keys_in_file "$file"
    done
}

# Main script
main() {
    if [[ -z "$SEARCH_DIR" ]]; then
        printf "Usage: %s <directory>\n" "$0" >&2
        exit 1
    fi

    process_files_recursive "$SEARCH_DIR" || exit 1
}

main "$@"
