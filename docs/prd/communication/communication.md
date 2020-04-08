# Communication

## Entity

### Meeting

| Field          | Description                                                  |
| -------------- | ------------------------------------------------------------ |
| Subject*       | Free form text input field                                   |
| Status         | Possible values: `Scheduled` & `Completed.` Default `Scheduled` |
| Scheduled Date | Applicable when status is `Scheduled`                        |
| Completed Date | Applicable when status is `Completed`                        |
| Project        | Select box of Project. Default `General` is selected         |
| Attendees*     | Autocomplete of Contact                                      |
| Summary        | Text editor.  Applicable only when status is `Completed`     |
| Legal Entity   | Current legal entity                                         |
| Section        | It can be multiple. Allows to select from predefined list. For each section shows text editor |
| Related Entity | Only applicable for Individual and Joint. it can be multiple. Allows to add any other legal entity of current family. |
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

### Edit meeting

- Doesn't allow to edit when other edit session is already running. Shows proper message
  - Case: Suppose `User1` is currently editing `Meeting1` and if you try to edit same meeting system will show proper message to you about `User1` is editing  this meeting currently

### Delete meeting

- Allows to delete anytime

### Download PDF

- On download, downloads PDF file in same browser tab
- Download file name : {meeting-subject}-meeting-report.pdf

### Alert to restore last unsaved changes of Meeting

- System keeps track of changes which are not saved for Meeting
- When user leave the Meeting  page (Add/edit)  without CANCEL action, System will store unsaved changes in local storage. 
- When user performs any action like Add/Edit, System will check if there is any unsaved changes available in local storage or not. If any unsaved changes found in local storage, System asks user about restore unsaved changes. On confirmation of user, System restores unsaved changes.

### Create note

- Allows to create note anytime

### Edit note

- Allows to edit anytime

### Delete note

- Allows to delete anytime

### Move Meeting/Note to project

- By default meeting/note has `Default` project
- User can move note to any other active project 
- Here active means project which is not archived

### Filter

- Allows to filter records by Project, Date, Agenda topics (Section or tag)

### Search

- Allows to search records 
- System will match search query on subject, attendees name, content of legal entity's section  and content of related legal entity's tag

### Create Project

- System maintains project with each legal entity.
- System auto creates `General` project for each legal entity
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

[Mockups](https://drive.google.com/drive/u/0/folders/1OvqBMbWy3xIpl5QEpIXFewP43g67R39_)

### Create meeting

- Shows default date as today's date
- When any new section is added, system shows bullet points in text editor
- Sections will be shown in same order in which it is added\

#### Add section

- Sections are show in alphabetical order in dialog
- Allows to add multiple sections
- Already added section won't be available in dialog

#### Add related entity

- Only shown for meeting of Individual or Joint. For other legal entities this functionality is not available
- Doesn't allow to add legal entity if its already added

#### Change position of section

- in Create or Edit meeting, Allows to change position of sections using `UP` or `Down` buttons
- For first section `Up` icon will be disabled, while for last section `Down` icon will be disable

#### Delete section

- Section can be removed using X icon

### View meeting

- Scheduled On or Completed On:  
  - If meeting is completed, shows Completed On. Otherwise shows Scheduled on. 
  - If schedule date is already passed, shows it in red
- Project: 
  - Shows project name if its other than `General`
- On click of PDF, downloads file in same browser tab
- Shows `Created` and `Updated` time and name of the user at last
- If other user has same meeting open in Edit, Shows name of the user whose edit is running currently

- Attendees
  - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
  - In Attendees list, shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order

### Edit meeting

- Doesn't allow to edit, If edit session is already running for this meeting. In such case shows message in dialog.

### Meetings tab

- Shows all meetings in descending order of date

- For each meeting shows following details

  - Scheduled On or Completed On:  
    - If meeting is completed, shows Completed On. Otherwise shows Scheduled on. 
    - If schedule date is already passed, shows it in red
  - Project: 
    - Shows project name if its other than `General`

  - Attendees
    - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
    - In Attendees list, shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order
  - Agenda Topics
    - Shows name of  `Section` or `Tag` applied for this meeting
  - Related Entity
    - On click of Related entity link opens `Related meetings` tab of that entity
  - Meeting Summary:
    - For completed meeting shows summary. Maximum 2 lines of summary is shown. 

### Delete Meeting

- On Delete, shows delete confirmation dialog

### Related meetings tab

- Shows all meeting where this legal entity is added as related entity in descending order of date.

### Notes tab

- Shows records in descending order or date
- For each note shows following information
  - Project name is shown only if its other than `General`
  - Tag is shown if its applied
  - Maximum 2 lines of note content are shown. 

### Create Note
- By default, current date is prefilled in `Date`

### Edit note
- User can edit note by clicking on the note.

### Move to Project

- For Meeting/Notes, allows to move to another project
- In Move dialog, current project will be shown as disabled
- Allows to create new project and move Meeting/Notes to directly that new project

### Delete Note

- On Delete, shows delete confirmation dialog


### Manage projects

- Shows projects in `Active` and `Archived` tab
- Records in both tabs are sorted in alphabetical order.
- `Archived` tab is shown only if records exists. Otherwise `Archived` tab is not shown
- Doesn't allow to edit or delete `General` project

- When project with same name is already exists, shows message: `Already exists`

### Filter

- Project:
  - Default value `ALL`
  - Dropdown shows all projects in alphabetical order. Active projects are shown at Top and Archived projects are shown at bottom. 
  - With each record in dropdown, shows counts of Notes and Meeting
- Agenda topic:
  - Default value `ALL`
  - Dropdown shows only those topics which are used in existing records.
  - With each record in dropdown, shows counts of Notes and Meeting
-  `From` & `To` is Date range control.
- When filter is applied, shows RESET button. On RESET, all fields will be  resset to detault state.
- When filter is applied, count of Meeting, Related meeting and Notes tab will also be updated

### Text editor

- Default Font size in text editor will be 16px in Edit and view