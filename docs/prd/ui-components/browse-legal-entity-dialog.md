# Browse legal entity dialog

- This dialog shows families based on the login user.
  - It will always show only associated families (User has any role) in browse dialog (it doesn’t matter user is admin or not)

- Shows 3 columns: Family, Type & Legal Entity
- Each column will have its own scroll when content overflow
- Width of the Family & Type will be same, Legal Entity column has some larger width
- When Family is not selected, All items in Type column will be disabled.
- When Family is selected, Type column will show only those items `active` which are available in that family. Other items will be shown as `disabled`
- When Family & Type isn’t selected yet, Legal Entity column shows a message: `Select a Family & Type`
- If Individual and Joint have Display name, it appears in bracket with the name.
- Dialog has some defined Min height. Its Max height is based on the available view port.
- When dialog is opened, If legal entity is already selected, selected legal entity will be default active
- When dialog is opened, if legal entity is not selected
  - focus won't be on any item. User need to press down arrow to get focus on first item of Family column. 
  - Same way when any Family is selected, focus won't be on first item of Type column, but user need to press down arrow to get focus on first item of Type column. 
  - Same behaviour for Legal entity column.
- Focus can be moved using UP, DOWN, RIGHT, LEFT key

- Dialog can be closed using X button
