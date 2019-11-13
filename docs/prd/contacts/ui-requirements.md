# Contacts UI requirements

See [Contacts URLs here](../webapp/application-url-navigation.md#contacts)

## List page
- Separated by status of Active and Archive through tabs
  - Number of contacts in respective state is shown in Tab
- By default active tab is visible
- Both tabs are always visible, regardless of available contact under it.
- Show loader when list is loading and hide it when list is loaded
- List is sorted by Assending order of Name
- `Individual` type contact are shown with special icon before Name
- Sorting options are not available
- When there are no contacts, shows empty-state message: "No records found".


### List Item
- Shows `-` for fields which doesn't have value
- context-menu actions:
  - Edit
  - Archive (or Restore)
  - Delete
  - Replace and Delete
- Edit
  - Not available for archived contact
  - For Individual, On `Edit` action opens Individual Edit page/dialog.
- Archive (or Restore)
  - "Archive" action is available for Active contacts & "Restore" for archived.
  - It's not available for `Individual` type.

### Toolbar
- When `Individual` type of contact is in the selection, `Archive` and `Delete` actions are disabled.
  

## Archive/Restore
Following applies to both: Action from the `item-context` menu (Single) or multiple selection:
- On click action is performed, immediately. No extra confirmation is needed.
- On Archive/Restore, shows toast "Archived successfully" or "Restored successfully".


## View
- User can view contact by clicking on Contact row
- View is presented in Dialog except for the `Individual` type.
- For `Individual` it opens `Workspace` page
- If Contact has Company, it is shown as hyperlink and clicking on it opens Company view dialog
- Shows `-` for fields which doesn't have value


## Delete
//TODO: