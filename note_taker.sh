#!/bin/bash

# Define the directory where notes will be saved
notes_dir="$HOME/notes"

# Create the notes directory if it does not exist
if [ ! -d "$notes_dir" ]
then
    mkdir "$notes_dir"
fi

# Display the menu of available actions
echo "Select an action:"
echo "1. Create a new note"
echo "2. View existing notes"
echo "3. Exit"

# Read in the user's choice
read -p "Enter the number corresponding to your choice: " choice

# Process the user's choice
case $choice in
    1)
        # Prompt the user to enter the note title and content
        read -p "Enter the note title: " title
        read -p "Enter the note content: " content

        # Generate a unique filename for the note based on the current timestamp
        filename=$(date +"%Y-%m-%d_%H-%M-%S").txt

        # Save the note to the notes directory
        echo "$title" > "$notes_dir/$filename"
        echo "$content" >> "$notes_dir/$filename"

        echo "Note saved to $notes_dir/$filename"
        ;;
    2)
        # List the notes in the notes directory
        echo "Available notes:"
        for note in "$notes_dir"/*.txt
        do
            echo "$(basename "$note")"
        done

        # Prompt the user to choose a note to view
        read -p "Enter the name of the note you want to view: " note_name

        # Check if the specified note exists
        if [ -f "$notes_dir/$note_name" ]
        then
            # Display the contents of the note
            echo "Contents of $notes_dir/$note_name:"
            cat "$notes_dir/$note_name"
        else
            echo "Note $note_name not found in $notes_dir"
        fi
        ;;
    3)
        # Exit the program
        echo "Exiting note-taking application"
        exit 0
        ;;
    *)
        # Handle invalid input
        echo "Invalid input. Please enter a number between 1 and 3."
        exit 1
        ;;
esac
