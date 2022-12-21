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

If Note has any tasks, then the meeting/notes can’t be deleted. On Delete, shows “Delete not Possible” dialog.

If Note doesn't have any tasks, On Delete, shows delete confirmation dialog

## View

- Shows tasks added for the Notes. [See this](https://drive.google.com/file/d/1MYmQf2lw-4o15p0Sw8XscG1XQjPEle1U/view?usp=share_link)

## Move to another project

This feature is same as meeting. See [this](./meeting#move-to-another-project) for more details

## Download PDF

- Download file name : `{Notes-title}-notes-report.pdf`
- In PDF header, shows `Notes` label at left side and `Title` at right side.
- Note Date is shows below `Notes` label at left side.
- If notes title is too long , show it in multiple line but never shows ellipsis
- Shows Content of Notes in HTML
- PDF icon won't be applicable when the tab has no records available.

Sample PDF of [Notes](https://drive.google.com/file/d/1tXh-EjMdjBL1FErpJDZLrR0eBg1AScob/view?usp=share_link)



