#!/bin/zsh

# Function to copy directory structure recursively excluding .gitkeep files
copy_structure() {
    local source_dir="./vault"
    local dest_dir="$1"
    
    # Copy all directories and files from source directory to destination directory excluding .gitkeep files
    rsync -av --exclude='.gitkeep' "$source_dir"/ "$dest_dir"
}

# Check if destination directory argument is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <destination_directory>"
    exit 1
fi

# Extract destination directory argument
destination_directory="$1"

# Check if destination directory exists, if not create it
if [ ! -d "$destination_directory" ]; then
    mkdir -p "$destination_directory"
fi

# Call the function to copy directory structure
copy_structure "$destination_directory"

echo "Directory structure copied successfully."
