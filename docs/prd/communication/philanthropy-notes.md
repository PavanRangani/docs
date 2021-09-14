# Philanthropy Notes

## System rules

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