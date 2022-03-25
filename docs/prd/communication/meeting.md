# Meeting

## Create 

Shows `General` project selected by default. Allows to select any other active projects.

### Status & Date

Most of the case meeting is planned for future. So default status of the meeting is `Scheduled`.  In `Scheduled` state, it asks for `Scheduled on` date

If meeting is already completed it should be added with status `Completed`. When status is `Completed` , it asks for `Completed on` date and `Summary`.  In `Summary` allows to enter Rich text via text editor.

Shows current date in `Scheduled date` or `Completed date` field. User can change this date if required

### Attendees

Its multi value field of contact. At least one contact is mandatory. See [Attendees](./overview#attendees) in entity details

#### Why are we not showing display names in the `Attendees` field dropdown?

Currently, `Attendees` is a dropdown of all contacts. Suppose I have a contact named `Sunny Gupta` and  I have added `Sunny Gupta` as a display name for `Sachin Gupta`. Now if we implement such that both display name and contact name will appear in contact dropdown. So when I open a dropdown of `Attendees`, it will show me `Sunny Gupta` 2 times (One for contact and the second is for display name). That confuses me. That’s why we decided that the `Display Name` is not shown in the contact dropdown.



### Section

Section is agenda of the meeting. 

Meeting can have more than one Section. 

#### Add

- Allows to add multiple sections. 

##### UI Requirement

[Mockup](https://drive.google.com/file/d/190BYylrCSRUwEH-TM1I0-X5kOIZTMXBd/view?usp=sharing)

- On `Add section` shows all options of [Master list](./overview#master-of-agenda-topics) in dropdown in alphabetical order. 
- Already added options will be shown in disable. 
- On click of any of the option, shows text editor in bullet point mode with focus in text editor

#### Remove

[Mockup](https://drive.google.com/file/d/1IgYLhV5Wqjfqrx-qrYLbbpWirsaynUpN/view?usp=sharing)

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

Related entity will show all types of legal entity.

One meeting can have more than one related entity. 

Each related entity can have more than one tags

Related entity can be removed any time

#### UI Requirement

##### Add related entity

[Mockup](https://drive.google.com/file/d/1AQjFtWkBlr4Lblpvcbg1q9QNfd7E-7P4/view)

- On click of `ADD RELATED ENTITY` opens dropdown
- Related entity dropdown
  - Dropdown shows all legal entities of this family group by its type
  - If `Display name` is available then show `Display Name` instead of legal name.
  - Sorting: Alphabetical, Primary sort: Legal entity type & Secondary sort: Legal entity name
  - Shows already added legal entities as disabled
  - On click of any legal entity it will be added and shows text editor with default focus in text editor

##### Set/Edit tags

Mock ups: [No tags available](https://drive.google.com/file/d/1ECDHoPGXBcx6iyzGrM_FBMDMocevdFOT/view), [Tag dropdown](https://drive.google.com/file/d/1COCXUxucrohl8jjyPZNLslYNUmFhctJw/view), [Tags added](https://drive.google.com/file/d/1vq1X18dGWixoBby4f4u65cOKgxle6SOm/view)

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

##### UI Requirement

- On click of vertmore in Related Entity, Opens dropdown for `Delete` action. 
- On click of `Delete` action, related entity will be deleted without any confirmation.

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

- All the Tasks added from Add meeting page are saved after the meeting is saved. So on Save action of meeting, UI app shows SAVE button disable and shows loader in content area until all the tasks of the meeting is saved to the server. 


## Edit

Meeting can be edited anytime

Edit is not  allowed only when other user is editing this meeting. See [Notification for other user is editing](#notification-for-other-user-is-editing) for more details



## Delete

Delete is not allowed  when other user is editing this meeting. See [Notification for other user is editing](#notification-for-other-user-is-editing) for more details

If the meeting has any tasks, then the meeting/notes can’t be deleted. On Delete, shows `Delete not Possible` dialog.

If Meeting doesn't have any tasks, On Delete, shows delete confirmation dialog



## Notification for other user is editing

- At a time only one user is allowed to edit the meeting
- When edit is running by one user, 
  - Meeting View page shows notification message about it to other user. 
  - Edit action is also disable. On hover of it, shows message
  - Delete action is also disable. On hover of it, shows message
- Edge case: If user opens Edit page with direct URL, Edit page will not show any fields in page but it will  shows same message of tooltip in header
- Technical Edge case: 
  - We are using firebase to maintain Edit state. So when meeting edit session is completed, UI app updates data on firebase. Sometimes during meeting edit session, if internet is disconnected and then user close the browser, this edit state is not being updated on firebae. So meeting will remain in Edit state always and user will be locked. So we have added 2 hours window for edit state. Means meeting will remain in Edit state maximum for 2 hours. After 2 hours passed, UI will always mark Edit state completed on firebase to avoid internet disconnection issue. 

### UI Requirement

[Mockup](https://drive.google.com/file/d/1iamIm_MzoKD61vWZtfh6gokxiU7vxrIA/view)

Notification message in view page: `{Other user name} is editing this meeting`

Edit and Delete action tooltip message: `{Other user name} is editing this meeting. Please try again later.`

Here `Other user name` is name of the user who is editing this meeting

## Download PDF

- Allows to download PDF of the meeting content.
- Shows PDF icon in view page
- Download file name : {meeting-subject}-meeting-report.pdf
- On Download, PDF file will be downloaded in same browser tab.
- In PDF header, shows `Meeting` label at left side and `Title` at right side.
- Shows meeting date at the left side after the `Meeting` label. (Here date is shown left side to avoid cases where meeting name is long and shown in two line)
- If meeting subject is too long, show it in multiple line never shows ellipsis.
- If `Non-Profit Entity Notes` section has no data available, section doesn't appears in the PDF file.
- PDF icon won't be applicable when the tab has no records available.

**Task**

- Shows `Tasks` section at the bottom of the PDF.
- Task are group by section. In section, `Tabs` section are shown first and `Agenda Items` section are shown second. `Agenda Items` are sorted alphabetical order of section name.
  - In each section, task are primary sorting on entity type in order of - Joint, Individual, Partnership, Foundation, Estate, Trust. Each entity type alphabetical sorted on name.
  - Secondary sorting on alphabetical order of task name.
- Column name
  - Entity: If entity has display name then shows display name instead of legal name.
  - Task
  - Status
    - `In Progress` status shown in green colour.
    - `Blocked` status shown in red colour.
    - `On Hold` status shown in golden colour.

Sample PDF //TODO



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

