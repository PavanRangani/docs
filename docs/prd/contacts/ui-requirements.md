# Contacts UI requirements

See [Contacts URLs here](../webapp/application-url-navigation.md#contacts)

## List page
- Separated by status of Active and Archive through tabs
  - Number of contacts in respective state is shown in Tab
- By default active tab is visible
- Both tabs are always visible, regardless of available contact under it.
- Columns: Individual Icon, `Name`, `Company`, `Work Phone`, `Mobile Phone`, `Home Phone`, `Email`, Action button.
- Sorting: By Name. Manual/Custom sorting on other fields aren't available.

### List Item
- Shows an icon (in the first column) for `Individual` type contact.
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


## Replace and Delete
[Mock](https://drive.google.com/drive/u/0/folders/15J3-UluJWOc8oYH034NLe-UCr-zNUZtM)

- User need to choose one of the existing contact & then Replace.
- `Replace` button is disabled when Contact isn't yet selected.
- Drop-down doesn't offer the Contact which is being replaced.

## Delete
[View Mocks](https://drive.google.com/drive/u/0/folders/15J3-UluJWOc8oYH034NLe-UCr-zNUZtM)
- If the Contact isn't referenced anywhere, can be deleted with simple delete-confirmation.
- Otherwise, it shows all its relation where its linked and user has to choose one of the option: `REPLACE` or `ARCHIVE`.
- Contact can be linked at legal entities or underlying data of legal entities
  - Legal entities
    - Individual
    - Joint
    - Foundation
    - Partnership
    - Estate
    - Trust
    - Partners tab of all legal entities
  - Underlying records of legal entity
    - Communication
    - Banking
    - Gifting
    - Insurance
    - Tax return
    - Tax component
- Relations of all legal entities are shown in one group `Legal entities`
- Relations of underlying data are shown in separate group with its name.
  - For Communication, Banking, Gifting and Insurance shows its name
  - For tax return shows Year, form and legal entity name for e.g. `2020 (1040 - John Brown)`
  - For Tax component shows name of the Tax component


### Multiple Delete
When one of the selected contact is referenced anywhere, then we simply deny the action. User need to manually delete individual contacts.