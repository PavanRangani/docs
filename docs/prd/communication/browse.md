# Browse

- Meeting, Related meetings and Notes can be browsed from single page
- For quick finding search and filter is available
- For quick navigation to particular year, year scroller is available

### UI Requirement

- Page shows records in 3 tabs: MEETING, RELATED MEETINGS, NOTES
- Shows count of the records with tab
- When there is no records in  `Meetings` or `Related Meetings tab`, show this `No Meetings Found` message. 
- If there is no records in the `Notes` tab, show this `No Notes Found` message. 

#### Meeting & Related meeting & Note tab

- Meeting tab shows all meetings of this legal entity
- Related meeting tab shows  all meetings where this legal entity is added as related entity 
- Notes tab shows all Notes of this legal entity
- In each tab, show records in descending order of date
- Each records is shown as separate table

#### Meeting

- For each meeting shows one table
  - Title: Shows as table title. Formate of Title : {Scheduled Date and Completed Date}, {Title} (by {Meeting creater (name of the user who created this meeting) name}) 
    - If schedule date is already passed, shows it in red
  - Project 
    - Project name is shown if its other than `General`
  - Table columns: 
    - Attendees
      - Each record will be shown in separate line
      - Shows normal contact first and then Clarius contacts. In both group contacts will be sorted in alphabetical order
    - Agenda topics:
      - Each record will be shown in separate line
      - Shows sections in same order in which it was added in meeting. 
    - Related entity
      - Each record will be shown in separate line
    - Meeting Summary:
      - For completed meeting shows summary. For scheduled meeting it will show dash `-`
      - Shows summary in HTML

#### Note

For each Notes shows one table

Shows Subject and Date as table title. Formate of Title : {Date}, {Subject} {(by creater (name of the user who created this note) name)}

Shows project name only if its other than `General`

Table columns

- Tag:
  - Each tag will be shown in separate line
- Notes
  - Shows full content of Notes in HTML



## Search 

On search, shows matching records in each tabs

For meeting & Related meeting, matching is done on these fields: Subject, attendees name, content of legal entity's section  and content of related legal entity

For notes, matching is done on Subject & content

### UI Rquirement

[Mockup](https://drive.google.com/file/d/16r3WNXTXQ_HDQNgwLi4xcj1VdCdwmJWs/view)

- Show loader in content area while search is in progress

- In search mode, Meeting and Notes will show matching details in table.
- When search is applied, Meeting, Related meeting and Notes tab will also be updated as per matching records in each tabs

#### Meeting

- Card shows only following details
  - Title: See [Meeting](#meeting)
  - Schedule on or Completed on date: See [Meeting](#meeting)
  - Attendees : See [Meeting](#meeting)
  - Matching data: When matching is done in content of any text editor (Section or related entity), whole content of that text editor is shown in HTML

##### Example: 

See this rough [sketch](https://drive.google.com/file/d/1IzYHsBVXsoebC_tX-bncGVomwk5TpZ5d/view)

In this rough sketch, 

- For first meeting subject is only matched.

- For second meeting Subject and content of Insurance section is matched.

- For third meeting content of Personal financial statement is matched.

#### Notes

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

[Mockup of Agenda topic dropdown](https://drive.google.com/file/d/13l723_TohEBeCUDXCBc_KFUU3MNai_zQ/view)

- Default value `ALL`. All agenda topics will be selected.
- Dropdown shows only those topics which are used in existing records.
- With each record in dropdown, shows counts of Notes and Meeting
- When particular topics are selected, it shows count of selected topics in filter. For e.g. when only two topics are selected, dropdown shows `2 topics` 
- When Agenda topic filter is applied, matching Meeting table will shows the full content of that matching section in HTML

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
  - Related Entity will be shown as link. On click of that link opens Related meeting tab in communication for that.
- Shows `Created` and `Updated` time and name of the user at last
- If other user or same user has same meeting open in Edit, Shows name of the user whose edit is running currently. See [Notification for other user is editing](./meeting#notification-for-other-user-is-editing) for more details.
