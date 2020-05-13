# Browse Meeting /Notes related to Investment

- Allows to see all meeting/notes of the selected legal entity having `Investment` as section or tag. 
- Shows all the meetings which has `Investment` section and all the notes which has `Investment` tag.
- Shows both type of records Meeting & Notes in same list in descending order of the date (Latest at top)
- Page is lazy loaded. New records will be loaded when user scrolls to bottom.

## UI Requirement

[Mockups](https://drive.google.com/drive/u/0/folders/1Ggnh3PvN3TAZph1DP0znsAk48saXFFjk)

- When no records available in page, shows 'No Records Available' message.
- Each Meeting/Notes is shown as seprate table. 
- On mouse hover of table shows hover effect and cursor as hand.
- On click of Meeting opens view page of the meeting in same page.
- On click of Note opens edit dialog in same page.

#### Meeting 

- In each table shows following information
  - Title: Shows as table title. Formate of Title : {Scheduled Date and Completed Date}, {Title} (by {Meeting creater (name of the user who created this meeting) name})
    - If schedule date is already passed, shows it in red
  - Project: 
    - Project name is shown if its other than `General`
  - Attendees
    - Shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order
    - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
    - When attendees are too many, it will be shown in multiple line
  - Agenda topics:
    - Shows sections as chips. Sections will be shown in order in which it was added in meeting. In case of overflow shows it in multiple line
    - When topics are too many, it will be shown in multiple line
  - Meeting summary
    - For completed meeting, shows meeting summary
  - Investment section
    - Shows full content of investment section in HTML

#### Note

Each table shows following information

- Shows Subject and Date as table title. Formate of Title : {Date}, {Subject} {(by creater (name of the user who created this note) name)}

- Project name:  
  - Shows project name only if its other than `General`
  
- Tag:
  - Shows all tags as chips. 
  - When tags are too many, it will be shown in multiple line
  
- Content: 
  - Full content of Note will be shown in HTML
