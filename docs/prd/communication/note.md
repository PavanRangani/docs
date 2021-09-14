# Notes

## Create

[Mockup](https://drive.google.com/file/d/1-d3LSw6TK8ivIlQHwV_ziUe548PBGo4P/view)

### UI Requirement

- Date: Shows current date in `Date` field. User can change this date if required. Its a mandatory field.
- Project: Shows `General` project selected by default. Allows to select any other active projects
- Note can have atleast one or more agenda topic. Its called Tag. 
- When tag is not selected and tries to save, it shows error message.
  - Error message: `Please select at least one Tag`
- Content: Text editor
- Tags: By default there won't be any tag. User can set/edit tags.

#### Set/Edit tags

- On click of Edit icon of tags, opens Tags dropdown
- Dropdown
  - Shows all options of [Master list](./overview#master-of-agenda-topics) in dropdown in alphabetical order. 
  - Allows to select multiple tags
  - Already selected tag is shown with selected icon
  - on RESET, all selection will be removed
  - on APPLY, selected tag will be applied to related entity



## Update

Can be edited anytime

## Delete

Can be deleted anytime. On delete opens delete confirmation dialog

## Move to another project

This feature is same as meeting. See [this](./meeting#move-to-another-project) for more details

## Download PDF

- Download file name : `{Notes-title}-notes-report.pdf`
- In PDF header, shows "Notes" label at left side and "Title" at right side.
- Note Date is shows below "Notes" label at left side.
- If notes title is too long , show it in multiple line but never shows ellipsis
- Shows Content of Notes in HTML


## Philanthropy Notes

### System rules

- In Add/Edit and View dialog of the Meeting, shows all Philanthropy notes of particular legal entities. 
- It shows only those notes whose date is matching with the meeting schedule/completed date.
- Allows to add/edit/delete notes from Meeting add/edit/view page.
- When the user changes the date of Meeting, notes will be refreshed.

### UX Rules

- Shows a separate section for Notes in the meeting page.
- When no notes are available it shows a proper message.
- For each Philanthropy note, it shows “Non-Profit Organization Name” and “Notes”. On the overflow of Notes column, it shows in multiple lines.
- Notes are shown in alphabetical order of Organization name.
- On click of + button, it opens the “Add Note” dialog.
  - Here date is prefilled with schedule/complete date of meeting and its disabled field.
  - Non-Profit Organization is Mandatory field. It's an auto complete company dropdown which shows all Non-Profit type companies & Other family foundations.
  - Notes is mandatory and its multi-line text input field.
- Shows hover effect on each record. 
- On hover, it shows vertmore actions: Edit & Delete.
  - On Edit, opens Edit note dialog.
  - On Delete, opens Delete confirmation dialog. 
  - Delete confirmation dialog shows Date and Organization name so that the user can get an idea about which note is being deleted.

### UI Requirement

[Mockup](https://drive.google.com/drive/folders/10QucKhdQxlUJ4VMHfVFEr40t7krYCKrd)



