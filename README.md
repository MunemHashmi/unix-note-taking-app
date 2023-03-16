# Unix Note-taking application

This is a simple text editor that allows users to create and save notes in a designated directory.

## Usage

To use this note-taking application, simply run the `note_taker.sh` script in your terminal.

```javascript
$ ./note_taker.sh
```

This will display a menu of available actions:

```javascript
Select an action:
1. Create a new note
2. View existing notes
3. Exit
Enter the number corresponding to your choice:
```

To create a new note, select option 1 from the menu and follow the prompts to enter a note title and content.

To view existing notes, select option 2 from the menu and choose a note to view from the list of available notes.

To exit the application, select option 3 from the menu.

## Output Sample

Here is an example of creating a new note and then viewing it:

```javascript
Select an action:
1. Create a new note
2. View existing notes
3. Exit
Enter the number corresponding to your choice: 1
Enter the note title: Grocery List
Enter the note content:
- Milk
- Bread
- Eggs
Note saved to /home/user/notes/2022-03-16_12-34-56.txt

Select an action:
1. Create a new note
2. View existing notes
3. Exit
Enter the number corresponding to your choice: 2
Available notes:
2022-03-16_12-34-56.txt
Enter the name of the note you want to view: 2023-03-11_12-34-56.txt
Contents of /home/user/notes/2023-03-01_12-34-56.txt:
Grocery List
- Milk
- Bread
- Eggs
```

In this example, we created a new note with the title "Grocery List" and the content "- Milk\n- Bread\n- Eggs". The note was saved to the ~/notes directory with a filename based on the current timestamp.

We then viewed the list of available notes and selected the note we just created. The contents of the note were displayed in the terminal.

