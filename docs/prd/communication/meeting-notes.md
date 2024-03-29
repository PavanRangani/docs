# Browse Meeting/Notes for Particular Section/Tag

## Overview

- Show only those meeting/notes where that particular section is used in meeting/notes.
  - Ex. User opens meeting/notes tab in the investment tab. that means meeting/notes tab will show only those meeting/notes where `Investment` section/tag is used.

## UX Rule

- All records are pulled based on the Section/ Tag.
- Shows both type of records Meeting & Notes in same list in descending order of the date (Latest at top)
- Page is lazy loaded. New records will be loaded when user scrolls to bottom.

- When no records available in page, shows `No Records Available` message.
- Each Meeting/Notes is shown as separate table. 
- On mouse hover of table shows hover effect and cursor as hand.
- On click of Meeting opens view page of the meeting in same page.
- On click of Note opens edit dialog in same page.

#### Meeting 

- In each table shows following information
  - Title: Shows as table title. Format of Title : {Scheduled Date and Completed Date}, {Title} (by {Meeting creator (name of the user who created this meeting) name})
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
  - Summary 
    - For completed meeting, shows meeting summary
    - Shows full content of particular section in HTML
  - Non-Profit Notes
    - User can add/edit/delete philanthropy notes of particular legal entities.

#### Note

Each table shows following information

- Shows Subject and Date as table title. Format of Title : {Date}, {Subject} {(by creator (name of the user who created this note) name)}

- Project name:  
  - Shows project name only if its other than `General`

- Tag:
  - Shows all tags as chips. 
  - When tags are too many, it will be shown in multiple line

- Content: 
  - Full content of Note will be shown in HTML

#### Related meeting

Each table shows details same as Meeting (#meeting)

Only difference is, here, summary column shows only content of particular section tag.