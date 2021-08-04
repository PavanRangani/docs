# Browse Legal Entities

## UI requirement

There are 2 way to show `Legal Entities` : Browse Legal Entity dialog and Browse legal entity dropdown

#### Browse Legal Entity dialog 

- This dialog shows families based on the login user.
  - It will always show only associated families (User has any role) in browse dialog (it doesn’t matter user is admin or not)
- Shows 3 columns: Family, Type & Legal Entity
- Each column will have its own scroll when content overflow
- Width of the Family & Type will be same, Legal Entity column has some larger width
- When Family is not selected, All items in Type column will be disabled.
- When Family is selected, Type column will show only those items `active` which are available in that family. Other items will be shown as `disabled`
- When Family & Type isn’t selected yet, Legal Entity column shows a message: `Select a Family & Type to see list here`
- For Individual & Joint type legal entities, 
  - If `Display Name` is available then show name in the bracket of the legal name in the Browse dialog.
- Dialog has some defined Min height. Its Max height is based on the available view port.
- When dialog is opened, If legal entity is already selected, selected legal entity will be default active
- When dialog is opened, if legal entity is not selected
  - focus won't be on any item. User need to press down arrow to get focus on first item of Family column. 
  - Same way when any Family is selected, focus won't be on first item of Type column, but user need to press down arrow to get focus on first item of Type column. 
  - Same behaviour for Legal entity column.
- Focus can be moved using UP, DOWN, RIGHT, LEFT key
- Dialog can be closed using X button

- This dialog will show only those families in which user has any role. Other families won't be shown. 

Mockups //TODO



#### Browse legal entity Dropdown

- This dropdown shows all legal entity details of the whole application.
- Shows Family name and legal entity type in the secondary information.
- Records are sorted in alphabetical order of the legal entity name.

- For Individuals, If `Display Name` is available then show display name in the bracket of the legal name in the dropdown.
- For Joint, if `Display name` is available then show display name as a secondary information after the legal entity type.
- When the user searches `Display Name` or `legal entity name` , then dropdown show the appropriate result.
- On click of any records of the dropdown, dropdown will be closed and open contact page of selected entity. 
- When the dropdown is opened, selected legal entity will be shown active.
- User can be moved focus using UP, DOWN key.
- Dropdown can be closed when user click on the other place of the application.

Mockup of Individuals with Display name //TODO

Mockup of Joint with Display name //TODO