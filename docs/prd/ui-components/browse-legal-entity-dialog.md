# Browse legal entity dialog

- Shows 3 columns: Family, Type & Legal Entity
- Each column will have its own scroll when context overflow
- Width of the Family & Type will be same, Legal Entity column has some larger width
- When Family is not selected, All items in Type column will be disabled.
- When Family is selected, Type column will show only those items `active` which are available in that family. Other items will be shown as `disabled`
- When Family & Type isn’t selected yet, Legal Entity column shows a message: `Select a Family & Type to see list here`
- Dialog has some defined Min height. Its Max height is based on the available view port.
- Default active item, when dialog is opened:
  - If legal entity is selected, selected legal entity.
  - Otherwise, first family in the family list.
- Focus can be moved using UP, DOWN, RIGHT, LEFT key

- Dialog can be closed using X button

## TODO

- Outside click: Confirm with client at the time demonstration. (Chirag)