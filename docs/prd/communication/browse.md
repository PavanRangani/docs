# Browse

- Meeting, Related meetings and Notes can be browsed from single page
- For quick finding search and filter is available
- For quick navigation to particular year, year scroller is available



### UI Requirement

- Page shows records in 3 tabs: MEETING, RELATED MEETINGS, NOTES
- Shows count of the records with tab

#### Meeting & Related meeting & Note tab

- Meeting tab shows all meetings of this legal entity
- Related meeting tab shows  all meetings where this legal entity is added as related entity 
- Notes tab shows all Notes of this legal entity
- In each tab, show records in descending order of date
- For each record shows card
- On click of Meeting card opens view page of that meeting
- On click of Note card opens edit dialog for that note

#### Meeting card

- In each card shows following information
  - Title
  - Schedule on or Completed on date
    - If meeting is completed, shows Completed On. Otherwise shows Scheduled on. 
    - If schedule date is already passed, shows it in red
  - Project: 
    - Project name is shown if its other than `General`
  - Attendees
    - Shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order
    - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
  - Agenda topics: Sections separated by comma. Sections will be shown in order in which it was added in meeting. In case of overflow shows it in multiple line
  - Related entity
    - Name of related entities separated by comma. It will be link.  On click of that link opens  `Related meetings` tab of that entity
  - Meeting Summary:
    - For completed meeting shows summary.Summary is mandatory field. Maximum 2 lines of summary is shown. Summary is shown in plain text

#### Note card

Each card shows following information

- Date and creator (name of the user who created this note)
- Project name:  
  - Shows project name only if its other than `General`
- Tag:
  - Shows all tags separated by comman. If not tags available this field won't be shown.
- Shows Maximum 2 lines of content



## Search 

On search, shows matching records in each tabs

For meeting & Related meeting, matching is done on these fields: Subject, attendees name, content of legal entity's section  and content of related legal entity

For notes, matching is done on Subject & content

### UI Rquirement

- Show loader in content area while search is in progress

- In search mode, Meeting and Notes card will show matching details in card
- When search is applied, count of Meeting, Related meeting and Notes tab will also be updated as per matching records in each tabs

#### Meeting card

- Card shows only following details
  - Title: See [Meeting card](#meeting-card)
  - Schedule on or Completed on date: See [Meeting card](#meeting-card)
  - Attendees : See [Meeting card](#meeting-card)
  - Matching data: When matching is done in content of any text editor (Section or related entity), whole content of that text editor is shown in HTML

##### Example: 

See this rough [sketch](https://drive.google.com/file/d/1IzYHsBVXsoebC_tX-bncGVomwk5TpZ5d/view)

In this rough sketch, 

- For first meeting subject is only matched.

- For second meeting Subject and content of Insurance section is matched.

- For third meeting content of Personal financial statement is matched.

#### Notes card

- Shows full content in HTML (In normal case content are shown in maximum 2 line as plain text))

## Filter

- Allows to filter records using Date range filter, Project filter and Agenda topics filter
- When filter is applied, shows RESET button. On RESET, all filters will be  reset to default state.
- When filter is applied, count of Meeting, Related meeting and Notes tab will also be updated as per matching records

### UI requirement

#### Date range filter

- From and To field
- When only `From` value is available, shows all records having date higher than `From`
- When only `To` value is available, shows all records having date up to the `To`
- When `From` and `To` both available, shows record having date between `From` and `To`
- `From` should be smaller than `To`.  Otherwise shows error `Date must be > 'From date'`

#### Project

[Mockup](https://drive.google.com/file/d/10fZhrN-DtuRNMdWldb6o2CAb0dkyzmoJ/view)

- Default value `ALL`
- Dropdown shows all projects in alphabetical order. Active projects are shown at Top and Archived projects are shown at bottom. 
- With each record in dropdown, shows counts of Notes and Meeting. 
- Count of `ALL` will include count of active and archived projects both

#### Agenda topic

[Mockup](https://drive.google.com/file/d/13l723_TohEBeCUDXCBc_KFUU3MNai_zQ/view)

- Default value `ALL`. All agenda topics will be selected.
- Dropdown shows only those topics which are used in existing records.
- With each record in dropdown, shows counts of Notes and Meeting
- When particular topics are selected, it shows count of selected topics in filter. For e.g. when only two topics are selected, dropdown shows `2 topics` 

## Year scroller

It is useful for quick navigation to records of any particular year

It is only shown when user has records for more than one year. If all records are of same year, it won't be shown

#### UI requirement

[Mockup](https://drive.google.com/file/d/1NnrxRp02ltpSDw1HaA1B7O9qu-8MFngE/view)

- Shows years in descending order
- On click of any year, it auto scrolls page such that first record of that year is shown at top
- When user does manual scroll, year in scroller will be shown selected accordingly

## View meeting

[Mockup](https://drive.google.com/file/d/1iamIm_MzoKD61vWZtfh6gokxiU7vxrIA/view)

### UI requirement

- Schedule on or Completed on date
  - If meeting is completed, shows Completed On. Otherwise shows Scheduled on. 
  - If schedule date is already passed, shows it in red
- Attendees
  - Shows normal contacts and Clarius contact separated by pipe. Both type of contacts will be sorted in alphabetical order
  - Attendees will be shown as link. On click of that link opens contact view dialog if its contact. If its Individual opens `Workspace->Contact` page
- Shows `Created` and `Updated` time and name of the user at last
- If other user has same meeting open in Edit, Shows name of the user whose edit is running currently. See [Notification for other user is editing](./meeting#notification-for-other-user-is-editing) for more details
