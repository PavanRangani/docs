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
- For Joint & Individual, 
  - Household icon appears for entities having household = Yes. [See this](https://drive.google.com/file/d/1q3SUyZL68jpkzeuaed0dXLvTQxqNbjDE/view?usp=drive_link)
  - Shows a household icon in secondary for a Individual who is part of any Joint Household. [See this](https://drive.google.com/file/d/1AF3jo50Em-RgB-EKVw6ukz4WW-qKI4ES/view?usp=drive_link)
    - For e.g. `Tom & Judi` Joint is a Household. So when I see `Tom` & `Judi`, it shows me a household icon in secondary.
  - Shows Generation in secondary in front of each Individual and Joint. [See this](https://drive.google.com/file/d/1XjtDBwfsJOYDBn23EZXGhJFj8c38-XuA/view?usp=drive_link)
  - `Household` entities are shown at top and other entities are shown at bottom. Under each section of household or non-household, entities are primary sorted on Generation in order of `G0 to G6` and secondary sorting on alphabetical order of name.
- For Other entity, ASA icon appears for entities having ASA Entity = Yes. [See this](https://drive.google.com/file/d/1BiMi2sHIgamv1IoovdUVXlekFApSJzYe/view?usp=sharing)
  - `ASA ENtity` entities are shown at top in alphabetical order and other entity are shown at bottom in alphabetical order. 
- Dialog can be closed using X button


## Show Tooltip message 
- On hover of icon (Household, Part of Joint & ASA Entity), shows tooltip message.
- Tooltip messages
  - For ASA Entity = Yes: `ASA Entity is Yes`
  - For ASA Entity is not set (Yes or No): `ASA Entity is not yet set`
  - For Joint Household = Yes: `This Joint is Household`
  - For Individual Household = Yes: `This Individual is Household`
  - For Individual is part of Joint: `This Individual is part of Joint Household`
