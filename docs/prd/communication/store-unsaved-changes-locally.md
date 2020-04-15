# Store unsaved changes locally

- This feature is available for both : Meeting and Notes
- When Add/edit action is terminated without CANCEL or BACK, System will store unsaved changes in local storage. 
- When user performs any action like Add/Edit, System will check if there is any unsaved changes available in local storage or not. If any unsaved changes found in local storage, System asks user about restore unsaved changes. On confirmation of user, System restores unsaved changes.

### Case

- **Page refresh**: User creates new meeting and fill the data. User has not saved it. Now by mistake page is refreshed. So when page refresh is completed, system shows confirmation dialog to user to restore unsaved changes.
- **Clicked on other page link** : User creates new meeting and fill the data. Before user save it by mistake he clicked on other page link. So now when user create new meeting system shows confirmation dialog to user to restore unsaved changes.

### Technical details

#### System maintains unsaved changes of add operation per legal entity

##### Case

User creates new meeting for `Legal entity 1` and fill the data in it. User has not saved it yet. Now by mistake user has clicked on any other page link. 

Now if user again create new meeting for `Legal entity 1`, system will show confirmation dialog

But if user create new meeting for `Legal entity 2`, system will not show confirmation dialog

#### System maintains unsaved changes of edit operation per entity (Meeting/Note)

##### Case

`Legal entity 1` has two meetings: `Meeting 1` & `Meeting 2`

User is editing `Meeting 1` .  User has not saved it yet. Now by mistake user has clicked on any other page link.

Now if user perform edit action of `Meeting 1` again, system will show confirmation dialog.

But if user perform edit action of `Meeting 2`, system will not show confirmation dialog.

## UI Requirements

[Mockup](https://drive.google.com/file/d/1xh1bFg9O4xrfcQXOXwI8doAxHGRdTZq_/view)