# Meeting Audit Views

- For compliance purposes, Compliance Officer (Chelsea) needs to review meeting materials after each meeting to verify that the documents presented had the required footnotes, etc. So to standardize this review procedure, this view is built.

## System Rule
- Accessible to only admin users.
- It shows all meetings in system whose date is greater than `Jan 01, 2022`.
- It will show both : Upcoming and Historical meetings
    - Meetings where the `Meeting date` is Future are considered as Upcoming
    - Meetings where the `Meeting date` is Today or Past are considered as Historical
- By default this view shows only meetings which are pending to be reviewed
- Provides a way to filter meetings with variuos filter criterias
- Provides a way to `Mark as review` or `Undo review` each meetings


## UX Rule
- Meetings are shown in the two groups: Upcoming and Historical
- Sorting order: Meetings are sorted on descending order of date.
- Columns
    - Date
        - Shows `Schedule date` for schedule meeting and `Completed date` for completed meeting.
    - Family
    - Entity
    - Meeting Name
        - If meeting name is too long, shows elipsis
    - Compliance Review
        - If meeting is marked as Reviewed, shows right checkmark otherwise shows `-`.
    - Time Stamp ({Timezone})
        - Shows date-time-name in user's time zone. For e.g. `Jan 22, 2022, 06:00 PM by Chelsea Luzier`.
        - Timezone is shown in format like (+05:30 or -12:30)
    - Notes
        - If it is too long, it is shown in multi line.
- Shows filter on top where users can apply filter. [See more details](#filters)
- On hover of Unreviewed meeting, shows icon for `Mark as Reviewed`. 
    - On click, opens a dialog where user can enters a note. This note is not mandatory.
    - When users save the notes, system also stores the time stamp and login user who marked the meeting as reviewed.
- On hover of Reviewed meeting, shows `Undo` icon. On click, opens confirmation dialog. On confirmation, meeting is marked as opened.
- On click of meeting records, redirects users to that Meeting page
- Shows PDF and Excel icon at top where user can download Excel and PDF file. [See more details](#pdfexcel)


## UI Rule

[Mockups](https://drive.google.com/drive/u/0/folders/1XZbDf9MP-A5_clNF1fbaz243cfqfQ7a3)



## Filters

### UX Rule
- Filters are:
    - Families
        - Its a multi-select filter. Default value is `All`
        - Shows all families in alphabetical order of name.
    - Entities
        - By default its disable. It will be enable only when any particular Family is selected. Shows all entities of the selected family. It is a multi select filter. Default value is `All`.
        - Entities are sorted on entity type in order of -Joint, Individual, Partnership, Trusts, Foundation, Estate. Each entity type is alphabetically sorted.
        - If entity has Display name then shows display name instead of name in dropdown.
    - Meeting Type
        - Its a single select filter. Values are: `Open Meetings`, `Reviewed Meetings` & `All Meetings`
        - Default value is `Open Meeting`.
    - Historical Meetings Duration
        - This filter applies only to historical meetings.
        - Its a single-select filter. Values are: `All`, `Last 3 Months`, `Last 6 Months` & `Custom`
        - On click of Custom, opens a dialog where user can enter any custom `From` and `To` date. Do not allow to select date lower than `Jan 01, 2022`, otherwise shows error message.
- Shows `RESET` button when any filters are applied. On click, reset the filter to default state.


### UI Rule

- Error message for `From` & `To`: `Date must be >= 01/01/2022`



## PDF/Excel

### UX Rule

- Allows to download PDF / Excel file
- Downloaded file name: `meeting-audit-views.pdf` & `meeting-audit-views.xlsx`
- Sorting order will be same as UI.
- PDF will be in landscape format. 
- In PDF, shows Notes in the secondary information.
- In Excel, if meeting is marked as reviewed, shows `Yes` otherwise shows `No`.
- PDF and Excel shows applied filter criterias at top

### UI Rule

- Mockups of [PDF](https://drive.google.com/file/d/1TrL-aUh2L3bftDYgKXG_y3zIkicMTL4V/view?usp=sharing) & [Excel](https://docs.google.com/spreadsheets/d/14SCAhC_ZXTi22PejnSCWSH3jXMR1k4mh/edit#gid=126083448)


## Design decisions

### Why we don't provide a way to mark “Meeting as Reviewed” from the Meeting page? 

This action will only be performed from this new view. We don't want it in meeting page. We discussed this with Keith also and he is also agree that this is not needed. 
 
### Why we don't show Meeting is reviewed or not on the Meeting page?

This was also discussed with Keith and he is in agreement. This is really a backend compliance function.  All meetings will be reviewed, so we don’t need to show that meeting is marked in meeting page. 

