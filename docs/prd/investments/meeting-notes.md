# Browse Meeting /Notes related to Investment

- Allows to see all meeting/notes of the selected legal entity having `Investment` as section 
- Shows both type of records Meeting & Notes in same list in descending order of the date (Latest at top)
- Page is lazy loaded. New records will be loaded when user scrolls to bottom.

## UI Requirement

[Mockups](https://drive.google.com/drive/u/0/folders/1Ggnh3PvN3TAZph1DP0znsAk48saXFFjk)

- When no records available in page, shows  'No records available' message
- Each Meeting/Notes is shown as one card. 

#### Meeting card

- In each card shows following information
  - Schedule on or Completed on date
    - If meeting is completed, shows Completed On. Otherwise shows Scheduled on. 
    - If schedule date is already passed, shows it in red
  - Title of the meeting
  - Project: 
    - Project name is shown if its other than `General`
  - Attendees
    - Shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order
    - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
    - When attendees are too many, it will be shown in multiple line
  - Agenda topics:
    - Shows sections as chips. Sections will be shown in order in which it was added in meeting. In case of overflow shows it in multiple line
    - When topics are too many, it will be shown in multiple line
  - Meeting Agenda
    - Full content of under Meeting agenda will be shown in HTML
    - Tags of related entity will be shown as chips

#### Note card

Each card shows following information

- Date and creator (name of the user who created this note)
- Project name:  
  - Shows project name only if its other than `General`
- Tag:
  - Shows all tags as chips. 
  - When tags are too many, it will be shown in multiple line
- Content: 
  - Full content of Note will be shown in HTML

