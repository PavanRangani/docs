# Companies UI requirements

See [Companies URLs here](../webapp/application-url-navigation.md#companies)

See [Companies Mockups](https://drive.google.com/drive/folders/1KQXX8UApjpGWxi5S0IJ88IERqqL6wmRb) here

## List page

- Separated by status of Active and Archive through tabs
  - Number of companies in respective state is shown in Tab
- By default active tab is visible
- Both tabs are always visible, regardless of available company under it.
- Columns: Individual Icon, `Name`, `Group`, `Phone`, Action button.
- Sorting: By Name in ascending order. Manual/Custom sorting on other fields aren't available.

### List Item

- Shows `-` for fields which doesn't have value
- context-menu actions:
  - Edit
  - Archive (or Restore)
  - Delete
  - Replace and Delete
- Edit
  - Not available for archived company
- Archive (or Restore)
  - "Archive" action is available for Active companies & "Restore" for archived.

## Archive/Restore

Following applies to both: Action from the `item-context` menu (Single) or multiple selection:

- On click action is performed, immediately. No extra confirmation is needed.
- On Archive/Restore, shows toast "Archived successfully" or "Restored successfully".


## View

- User can view company by clicking on company row
- View is presented in Dialog
- Shows `-` for fields which doesn't have value
- If any contact is associated with Company, its shown under `Employees` section
  - Shows Name, phone number and email of the contact
  - Name is shown as hyperlink and clicking on it opens contact view dialog


## Replace and Delete

- User need to choose one of the existing company & then Replace.
- `Replace` button is disabled when company isn't yet selected.
- Drop-down doesn't offer the company which is being replaced.

## Delete

- If the company isn't referenced anywhere, can be deleted with simple delete-confirmation.
- Otherwise, user has to choose one of the option: `REPLACE` or `ARCHIVE`.


### Multiple Delete

When one of the selected company is referenced anywhere, then we simply deny the action. User need to manually delete individual company.