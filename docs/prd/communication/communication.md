# Communication

## Entity

### Meeting

| Field          | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Subject        | Free form text input field                                   |
| Status         | Possible values: `Scheduled` & `Completed.` Default `Scheduled` |
| Scheduled Date | Applicable when status is `Scheduled`                        |
| Completed Date | Applicable when status is `Completed`                        |
| Project        | Select box of Project. Default `General` is selected         |
| Attendees      | Autocomplete of Contact                                      |
| Summary        | Text editor.  Applicable only when status is `Completed`     |
| Legal Entity   | Current legal entity                                         |
| Section        | It can be multiple. Allows to select from predefined list. For each section shows text editor |
| Related Entity | it can be multiple. Allows to add any other legal entity of current family. |
| Tag            | It can be multiple. Allows to select from predefined list.   |



### Note

| Field   | Description                                                |
| ------- | ---------------------------------------------------------- |
| Date    | Date input date. By default shows current date.            |
| Project | Project select box                                         |
| Title   | Free form text input field                                 |
| Content | Text editor                                                |
| Tag     | It can be multiple. Allows to select from predefined list. |



### Project

| Field    | Description          |
| -------- | -------------------- |
| Name     | Free form text field |
| Archived | True or false        |



### Master of Section (Tag)

- Assets
- Banking & Credit
- Bill Pay
- Cash Flow
- College Savings
- Gifting | Estate Planning | Trusts
- Human Resources
- Insurance
- Investments
- Other
- Personal Financial Statement
- Philanthropy
- Planning
- Tax

## System requirement

### Create meeting

- Allows to create meeting anytime

### Edit meeting

- Doesn't allow to edit when other edit session is already running. Shows proper message
  - Case: Suppose `User1` is currently editing `Meeting1` and if you try to edit same meeting system will show proper message to you about `User1` is editing  this meeting currently

### Delete meeting

- Allows to delete anytime

### Move meeting to Project

- By default meeting has `Default` project
- User can move meeting to any other active project 
- Here active means project which is not archived

### Download PDF

- On download, downloads PDF file in same browser tab
- Download file name : {meeting-subject}-meeting-report.pdf

### Alert to restore last unsaved changes of Meeting

- System keeps track of changes which are not saved.
- When user leave the Meeting  page (Add/edit)  without CANCEL action, System will store unsaved changes in local storage. 
- When user performs any action like Add/Edit, System will check if there is any unsaved changes available in local storage or not. If any unsaved changes found in local storage, System asks user about restore unsaved changes. On confirmation of user, System restores unsaved changes.

### Create note

- Allows to create note anytime

### Edit note

- Allows to edit anytime

### Delete note

- Allows to delete anytime

### Move note to project

- By default note has `Default` project
- User can move note to any other active project 
- Here active means project which is not archived

### Filter

- Allows to filter records by Project, Date, Agenda topics (Section or tag)

### Search

- Allows to search records 
- System will match search query on subject, attendees name, content of legal entity's section  and content of related legal entity's tag

### Create Project

- Doesn't allow to create project with same name

### Rename project

- Doesn't allow to rename `General`  project

### Archive project

- Doesn't allow to archive `General`  project

### Restore project

- Only `Archived` project can be restored

### Delete project

- Doesn't allow to delete `General`  project

## UI Requirement

### Create meeting

- Shows default date as today's date
- When any new section is added, system shows bullet points in text editor
- Sections will be shown in same order in which it is added\

#### Add section

- Allows to select multiple sections
- Sections are show in alphabetical order
- Doesn't allow to add section if its already added

#### Add related entity

- Allows to add any legal entity of Individuals and Joint for current family
- Doesn't allow to add legal entity if its already added

### Meetings tab

- Shows all meetings in descending order of date
- If schedule date is already passed, shows it in red
- Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
- On click of Related entity link opens `Related meetings` tab of that entity

### View meeting

- Shows name of the user whose edit session is running currently
- In Attendees list, shows normal contacts and Clarius contact separated by pipe
- Both type of contacts will be sorted in alphabetical order
- If schedule date is already passed, shows it in red

### Related meetings tab

- Shows all meeting where this legal entity is added as related entity in descending order of date.

### Notes tab

### Move section

- in Create or Edit meeting, User can change position of sections using `UP` or `Down` buttons



### Create Note
- User can add note at any time.
- By default, current date is selected in date. 

### Edit note
- User can edit note at any time.

### Delete note
- User can Delete note at any time.

### Manage projects

- Shows projects in `Active` and `Archived` tab
- If there isn't any archived projects, `Archived` tab is not shown
- When project with same name is already exists, shows message: 



### TODO

- When I click on Related entity which page should be shown
- How duplicate name error is shown for project
