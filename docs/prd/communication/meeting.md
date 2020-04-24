# Meeting

## Create 

### Status & Date

Most of the case meeting is planned for future. So default status of the meeting is `Scheduled`.  In `Scheduled` state, it asks for `Scheduled on` date

If meeting is already completed it should be added with status `Comleted`. When status is `Completed` , it asks for `Completed on` date and `Summary`.  In `Summary` allows to enter Rich text via text editor.

### Attendees

Its multi value field of contact. At least one contact is mandatory. See [Attendees](./overview#attendees) in entity details

### Section

Section is agenda of the meeting. 

Meeting can have more than one Section. 

#### Add

- Allows to add multiple sections. 

##### UI Requirement

[Mockup](https://drive.google.com/file/d/1R_0XJDSIgjnlpugA1tE5QHTZhoSI9NN8/view)

- On `Add section` shows all options of [Master list](./overview#master-of-agenda-topics) in dropdown in alphabetical order. 
- Already added options will be shown in disable. 
- On click of any of the option, shows text editor in bullet point mode with focus in text editor

#### Remove

[Mockup](https://drive.google.com/file/d/1ZY5DwBsKEX4GbNGFHmsT5qZoAqJkbdTn/view)

Shows X icon on hover of the text editor. On X section is removed without any confirmation dialog.

#### Reorder

- Sections are shown in page in the same order in which it is added. 
- User can change this position of section

##### UI Requirement

[Mockup](https://drive.google.com/file/d/1ZY5DwBsKEX4GbNGFHmsT5qZoAqJkbdTn/view)

- On hover of Section, it shows UP & DOWN icon. 
- On UP section will move upward, On DOWN section will move downward
- UP or DOWN will be disable when movement in respective direction is not possible.
  - Cases:
    - When there is only one section is available in page, both icons will be disable.
    - When there are multiple sections available 
      - For First section UP icon will be disabled
      - or Last section DOWN icon will be disabled
      - For intermediate section, both icons will be enabled.

### Related entity

See [Related entity](./overview#related-entity) for entity details

Related entity will show only in individuals and joint type.

One meeting can have more than one related entity. 

Each related entity can have more than one tags

Related entity can be removed any time

#### UI Requirement

##### Add related entity

[Mockup](https://drive.google.com/file/d/1AQjFtWkBlr4Lblpvcbg1q9QNfd7E-7P4/view)

- On click of `ADD RELATED ENTITY` opens dropdown
- Related entity dropdown
  - Dropdown shows all legal entities of this family group by its type
  - Sorting: Alphabetical, Primary sort: Legal entity type & Secondary sort: Legal entity name
  - Shows already added legal entities as disabled
  - On click of any legal entity it will be added and shows text editor with default focus in text editor

##### Set/Edit tags

Mockups: [No tags available](https://drive.google.com/file/d/1ECDHoPGXBcx6iyzGrM_FBMDMocevdFOT/view), [Tag dropdown](https://drive.google.com/file/d/1COCXUxucrohl8jjyPZNLslYNUmFhctJw/view), [Tags added](https://drive.google.com/file/d/1vq1X18dGWixoBby4f4u65cOKgxle6SOm/view)

- When related entity is added, it wont' have any tags.
- On click of Edit icon of tags, opens Tags dropdown
- Dropdown
  - Shows all options of [Master list](./overview#master-of-agenda-topics) in dropdown in alphabetical order. 
  - Allows to select multiple tags
  - Already selected tag is shown with selected icon
  - on RESET, all selection will be removed
  - on APPLY, selected tag will be applied to related entity
- Each Tag is shown as Chip

##### Remove related entity

- Shows `Delete` action in header of related entity. 
- On delete, related entity will be deleted without any confirmation

#### Reorder

- Related Entity are shown in page in the same order in which it is added. 
- User can change this position of section

##### UI Requirement

- On hover of Related Entity Section, it shows UP & DOWN icon. 
- On UP section will move upward, On DOWN section will move downward
- UP or DOWN will be disable when movement in respective direction is not possible.
  - Cases:
    - When there is only one Related Entity is available in page, both icons will be disable.
    - When there are multiple Related Entity available 
      - For First Related Entity Section UP icon will be disabled
      - or Last Related Entity section DOWN icon will be disabled
      - For intermediate Related Entity section, both icons will be enabled.




## Edit

Meeting can be edited anytime

Edit is not  allowed only when other user is editing this meeting. See [Notification for other user is editing](#notification-for-other-user-is-editing) for more details



## Delete

Delete is not allowed only when other user is editing this meeting. See [Notification for other user is editing](#notification-for-other-user-is-editing) for more details

On delete, opens delete confirmation dialog

## Notification for other user is editing

- At a time only one user is allowed to edit the meeting

### UI Requirement

[Mockup](https://drive.google.com/file/d/1iamIm_MzoKD61vWZtfh6gokxiU7vxrIA/view)

- When edit is running by one user, 
  - Meeting View page shows notification message about it to other user. 
  - Edit action is also disable. On hover of it, shows message
  - Delete action is also disable. On hover of it, shows message

### Text resources

Notification message in view page: `{Other user name} is editing this meeting`

Edit and Delete action tooltip message: `{Other user name} is editing this meeting. Please try again later.`

Here `Other user name` is name of the user who is editing this meeting

## Download PDF

- Allows to download PDF of the meeting content
- Download file name : {meeting-subject}-meeting-report.pdf
- On Download, PDF file will be downloaded in same browser tab

### UI requirement

[Mockup](https://drive.google.com/file/d/1iamIm_MzoKD61vWZtfh6gokxiU7vxrIA/view)

- Shows PDF icon in view page
- On click of PDF icon file will be downloaded

## Move to another project

- Meeting has always one Project.  This Project can be changed from Edit but system also provides a way to quick change project without editing meeting
- Using `Move to` action, user can select any other project from list of active project. 
- Allows to create new project and move meeting to that newly created project

### UI Requirement

Mockup: [Normal dialog](https://drive.google.com/file/d/1GHW4Js0wOLTE7PKW8Tp3RgW3NBZ0zGZQ/view), [Add new project](https://drive.google.com/file/d/1Z1IEKuUs9F6z-KtlTghUyMXz59YHZ9Kj/view)

- Move to dialog shows all active projects
- General project is shown at top. Other projects are shown in ascending order of name after General
- Current project of meeting is shown as disable
- ADD NEW
  - Allows to create new project
  - Shows error when project with same name is already exist

