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
- When there are no contacts, it shows blank page with table header (like there aren't any row)
  - No special empty view
- User can add new Contact by using + button
- User can select multiple contacts
- Actions are shown in header when at least one contact is selected
- Implement lazy rendering if performance is issue.


## Add Contact


## List Row
- Changes background color on hover
- Action button with `...` are visible
  - Available actions:
    - Edit (not available for archived contact)
    - Archive (or Restore)
    - Delete
- Show `-` for fields which doesn't have value

## View Contact
- User can view contact by clicking on Contact row
- It is shown as dialog for all contacts except `Individual` type
- Clicking on `Individual` type will open its `Workspace` page
- If Contact has Company, it is shown as hyperlink and clicking on it opens Company view dialog
- Show `-` for fields which doesn't have value


## Delete Contact
- Message is based on number of selected contacts for delete action
-

## UI Components
- Mobile/Phone number input and fieldview
- Toast notification
- icon for `Individual` type

# Questions
- Redlines?
- Width of page area?
  - Is it fluid or fixed?
-

## List page
- Individual Contact: Delete and Archive are not possible, shall we just not show "..." menu?
  - e.g it can be only viewed from here
- Header actions:
  - Is title `Real Estate` correct?
  - When user selects only `Individual` type of contact, do we show Archive and Delete actions? (They are not possible for it)
    - Suggestion: We should not show it. It is shown only when there is at least one normal contact selected
  - Clicking on `<-` back arrow, would just discard selected, is it correct?
- Table section action header is different in Assets page. will we have both kind of?

## Toast message
- Which variant is final one?
- Would there be any other acknowledgement toasts? (e.g add/edit/delete contacts)

## Add Contact
- Dialog title "Add: Contact"
- Action buttons:
  - Create
  - Cancel
- Placeholder texts for all fields
- We have feature to edit caption for Address fields, how it would be implemented?
-

## View Contact
- Why "Aaron" is shown as underlined?
- Clicking on Delete will open confirmation dialog on top of this?
- Clicking on Edit will open Edit dialog on top of this?
-

## Delete Contact
- For Contacts which are referrenced to other places, we have delete and Replace functionality. Is it removed?
-


## Edit Contact
- "Add" button against Address title is new feature?
