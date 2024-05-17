#!/bin/zsh

# Enable null_glob option to handle cases where no directories match the pattern
setopt null_glob

# Function to add .gitkeep files recursively
add_gitkeep() {
    local root_dir="$1"
    
    # Iterate over directories in root directory
    for dir in "$root_dir"/*/; do
        # Check if directory is empty
        if [ -z "$(ls -A "$dir")" ]; then
            # Check if .gitkeep file doesn't already exist in the directory
            if [ ! -e "$dir/.gitkeep" ]; then
                # Add .gitkeep file if directory is empty and doesn't contain .gitkeep
                touch "$dir/.gitkeep"
                echo ".gitkeep file added to $dir"
            fi
        else
            # Recursively call add_gitkeep on non-empty subdirectories
            add_gitkeep "$dir"
        fi
    done
}

# Check if root directory argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <root_directory>"
    exit 1
fi

# Extract root directory argument
root_directory="$1"

# Check if root directory exists
if [ ! -d "$root_directory" ]; then
    echo "Error: Root directory '$root_directory' not found."
    exit 1
fi

# Call the function to add .gitkeep files
add_gitkeep "$root_directory"

echo "Operation completed."
