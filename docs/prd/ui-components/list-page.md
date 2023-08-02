# List Page

- Displayed in full available width of the screen.
- When no records, empty-state message "No Records Found" 
- Shows loader while data is being loaded.

## List Item
- On Hover, 
  - Background color is changed.
  - Action button `vert-more` is shown.

## Sorting
- Columns header on which sorting is applied is shown in primary colour with icon of `Up` or `Down`.
- On hover of any column header, other column having sorting features will show icon of `Up` or `Down`.
- When user hovers on any column header (Sorting is not applied), that column header name will be shown in the Primary color. 
- When the user wants to change the sorting order, User can click on the column header. On click, if sorting is applied on that column, its direction will be changed. If sorting is not applied, sorting will be applied on that column. 
- Sorting will be applied to on one column at a time. 
- When user clicks the icon for text column, column will sorted into `A --> Z` or `Z --> A` order.
- When user clicks the icon for Number or Amount column, column will be sorted into `Max --> Min` or `Min --> Max`.


## View Dialog
- Clicking on Delete will open confirmation dialog on top of it. View dialog is kept open in the background.
- On Edit, View dialog is closed & Edit dialog is opened. Browser history state is replaced, so on when Edit dialog is closed (Cancel or Save), view dialog won't be opened again.

## Add Dialog
- Dialog title `Add: {EntityName}` e.g. `Add Contact`
- Action buttons: `Candel` and `Add`.

## Edit Dialog
- Dialog title `Edit: {EntityName}` e.g. `Edit Contact`
- Action buttons: `Cancel` and `Save`.