# Portfolio Notes

## Entity Details

### Portfolio Notes
- It is a Rich text input editor. Its Optional. Allows to add more than one notes.


## Browse Portfolio Notes

### System Rule
- Portfolio notes won't be amended.

### UX Rule
- Shows portfolio notes to the right side of the page.
- This notes is visible in both `Current` & `History` tabs.
- Shows proper message when no notes available.
- It has one `+` button. On click, opens the notes in the editor mode and shows `Cancel` button. On click of `Cancel`, notes will be removed.
- At a time only a single note can be added. So the `+` button is disabled when one note is already open in edit mode. 
- On hover of Saved notes, shows hover effect and `Edit` & `Delete` action to the right side. 
    - On click of Delete, shows a delete confirmation dialog. On confirmation, notes will be removed.
- Edit Note
    - When user opens existing note in edit mode, shows the `Cancel` button to close the edit mode.
    - When user changes the notes, shows `SAVE` & `DISACRD` button. On click of SAVE, saved that notes and on click of DISCARD, remove that notes with data.
- Sorting order: Latest notes always shown at top.
- If notes is not saved and user refreshes the page or change the tab, notes won't be saved. It will removed. (We have not managed unsaved notes)

### UI Rule
- Placeholder text for `Portfolio Notes`: `No Notes Available`
- [See Portfolio notes](https://drive.google.com/file/d/1rkB4iCIHZ9irwwsB3jwcLBf1N1f4zNKZ/view?usp=sharing)