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

# Define the directory structure
directory_structure=(
    "00 - Inbox"
    "01 - Daily Notes"
    "02 - Reading/Books/Fiction"
    "02 - Reading/Books/Non-Fiction"
    "02 - Reading/Articles/Tech"
    "02 - Reading/Articles/Science"
    "02 - Reading/Articles/Personal Development"
    "02 - Reading/Papers"
    "02 - Reading/Blog Posts"
    "03 - Research/Topics"
    "03 - Research/Experiments"
    "03 - Research/References"
    "04 - Tech Notes/Projects"
    "04 - Tech Notes/Tutorials"
    "04 - Tech Notes/Code Snippets"
    "04 - Tech Notes/Tools & Software"
    "04 - Tech Notes/Troubleshooting"
    "05 - Habits & Todos/Habits"
    "05 - Habits & Todos/Todos"
    "05 - Habits & Todos/Goals"
    "06 - Personal Development/Skills"
    "06 - Personal Development/Courses"
    "06 - Personal Development/Certifications"
    "06 - Personal Development/Books to Read"
    "06 - Personal Development/Podcasts"
    "07 - Templates"
    "08 - Ideas & Brainstorming/Work Ideas"
    "08 - Ideas & Brainstorming/Personal Ideas"
    "08 - Ideas & Brainstorming/Future Projects"
    "09 - Meetings & Notes/Work Meetings"
    "09 - Meetings & Notes/Personal Meetings"
    "10 - Finances/Budgeting"
    "10 - Finances/Investments"
    "10 - Finances/Expenses"
    "10 - Finances/Savings"
    "11 - Health & Fitness/Workouts"
    "11 - Health & Fitness/Nutrition"
    "11 - Health & Fitness/Medical Records"
    "11 - Health & Fitness/Mental Health"
    "12 - Travel/Plans"
    "12 - Travel/Itineraries"
    "12 - Travel/Places to Visit"
    "12 - Travel/Travel Logs"
    "13 - Home & Family/Chores"
    "13 - Home & Family/Family Activities"
    "13 - Home & Family/Home Improvement"
    "14 - Social & Networking/Contacts"
    "14 - Social & Networking/Events"
    "14 - Social & Networking/Networking Notes"
    "15 - Work/Company A/Project 1"
    "15 - Work/Company A/Project 2"
    "15 - Work/Company A/Meeting Notes"
    "15 - Work/Company A/Documentation"
    "15 - Work/Company A/Code Snippets"
    "15 - Work/Company B"
)

# Call the function to create the directory structure
for folder in $directory_structure; do
    mkdir -p "$root_directory/$folder"
done

echo "Directory structure created successfully."

