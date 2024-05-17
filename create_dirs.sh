#!/bin/zsh

# Function to create directory structure recursively
create_structure() {
    local root_dir="$1"
    local -A structure="$2"
    
    for folder in "${(@k)structure}"; do
        folder_path="$root_dir/$folder"
        mkdir -p "$folder_path"
        
        if [ -n "${structure[$folder]}" ]; then
            create_structure "$folder_path" "${structure[$folder]}"
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

# Create root directory if it doesn't exist
if [ ! -d "$root_directory" ]; then
    mkdir -p "$root_directory"
fi

# Define the directory structure without numbering
directory_structure=(
    "Inbox"
    "Daily Notes"
    "Reading/Books/Fiction"
    "Reading/Books/Non-Fiction"
    "Reading/Articles/Tech"
    "Reading/Articles/Science"
    "Reading/Articles/Personal Development"
    "Reading/Papers"
    "Reading/Blog Posts"
    "Research/Technology"
    "Research/Science"
    "Research/Psychology"
    "Tech Notes/Projects"
    "Tech Notes/Tutorials"
    "Tech Notes/Code Snippets"
    "Tech Notes/Tools & Software"
    "Tech Notes/Troubleshooting"
    "Habits & Todos/Habits"
    "Habits & Todos/Todos"
    "Habits & Todos/Goals"
    "Personal Development/Skills"
    "Personal Development/Courses"
    "Personal Development/Certifications"
    "Personal Development/Books to Read"
    "Personal Development/Podcasts"
    "Templates"
    "Ideas & Brainstorming/Work Ideas"
    "Ideas & Brainstorming/Personal Ideas"
    "Ideas & Brainstorming/Future Projects"
    "Meetings & Notes/Work Meetings"
    "Meetings & Notes/Personal Meetings"
    "Meetings & Notes/People Notes"
    "Finances/Budgeting"
    "Finances/Investments"
    "Finances/Expenses"
    "Finances/Savings"
    "Health & Fitness/Workouts"
    "Health & Fitness/Nutrition"
    "Health & Fitness/Medical Records"
    "Health & Fitness/Mental Health"
    "Travel/Plans"
    "Travel/Itineraries"
    "Travel/Places to Visit"
    "Travel/Travel Logs"
    "Home & Family/Chores"
    "Home & Family/Family Activities"
    "Home & Family/Home Improvement"
    "Social & Networking/Contacts"
    "Social & Networking/Events"
    "Social & Networking/Networking Notes"
    "Work/Company A/Project 1"
    "Work/Company A/Project 2"
    "Work/Company A/Meeting Notes"
    "Work/Company A/Documentation"
    "Work/Company A/Code Snippets"
    "Work/Company B"
)

# Call the function to create the directory structure
for folder in $directory_structure; do
    mkdir -p "$root_directory/$folder"
done

echo "Directory structure created successfully."
