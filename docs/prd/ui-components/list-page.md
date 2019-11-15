# List Page

- Displayed in full available width of the screen.
- When no records, empty-state message "No records found" 
- Shows loader while data is being loaded.

## List Item
- On Hover, 
  - Background color is changed.
  - Action button `vert-more` is shown.

## View Dialog
- Clicking on Delete will open confirmation dialog on top of it. View dialog is kept open in the background.
- On Edit, View dialog is closed & Edit dialog is opened. Browser history state is replaced, so on when Edit dialog is closed (Cancel or Save), view dialog won't be opened again.

## Add Dialog
- Dialog title `Add: {EntityName}` e.g. `Add Contact`
- Action buttons: `Candel` and `Add`.

## Edit Dialog
- Dialog title `Edit: {EntityName}` e.g. `Edit Contact`
- Action buttons: `Cancel` and `Save`.