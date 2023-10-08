# Browse family

- User can browse details of all families.
- Users can see the other user's family.

## UX Rules
- Families are shown in two tabs: `Current` & `Archived`
- `Current` tab shows the all current active family and `Archived` tab shows all archived family.
- Shows families count with each tabs.
- Shows proper message when no family available in any tab.
- Shows Household details under each family. 
- Shows proper message when family has no households.
- Shows only those families where the login user is added in any household team role.
- Shows all households of family, whether a login user is added or not added in the household team.
  - E.g.  Family has four Households but the login user is associated with only one Household. But the family list page shows all 4 households.
- Families are sorted in alphabetical order of name.
- Shows family ID with family name. For e.g. `Birdwell (#4)`.
- Family name will be linked. On click, opens family details in the same page.
- On hover of each family, shows vertmore action menu at right side. 
  - Vertmore action: Edit, Archive, Delete, Restore
    - `Delete`, `Archive` & `Restore` action is applicable only for Admin users.
    - `Edit` & `Archive` actions are applicable only for Current tab.
    - `Restore` action is applicable only for the Archived family.
- Only admin users can mark families as `Archived` and `Restore`. (Note: Normal user can see both archive or active families, but he/she can't be marked the families as archived or restored.)

- **Current tab**
  - With each family shows names of the associated users.  
  - In case of Multiple users for same role, shows each user's name in separate line in alphabetical order. Mark as lead user shown always first.
  - Column name:
    - Household Name
    - Generation
    - Service Scope
    - Director
    - Advisor
    - Investment Director
    - Associate Advisor
    - Investment Associate
    - Client Manager
    - Client Associate
    - Operations
    - PC / Rec.
      - User are primary sorting on users role and secondary sorting on alphabetical order.
      - `Personal Controller` types roles are shown first and Reconciliation types role are shown second.
      - Show role name in bracket with each user name. E.g `Arun K. (PC)` or `Keith V. (Rec.)`
  - Under each family: Household are primary sorted in ascending order of Generation and Secondary sorting in alphabetical order of household Name.
  - If there isn't any household in any family, that family will be shown to all users. (Otherwise such family will not be accesible to anyone)
  - Shows tick mark icon for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
  - Note: There is not much width in the list page that's why we only show the first character of the last name. For ex. `Keith V.`
  - If a family has no `Client Associate`, show `CA Pool` as a word for Client Associate column on the list page. [See more details](../tasks/ca-pool.md)
  - Shows `+` button to the right side of the header. On click, opens the add family dialog.
  - On mouse hover of family shows hover effect. (No vertmore actions available)
  - On its click opens contact tab of that household.
  - Shows excel icon to the right side of the header. On click, the system will export the family data on excel.

- **Archive tab**
  - Layout and Column will be same as current tab. Other changes are:
    - New family can't be created in archived tab and existing families can't be edited.
    - Vertmore action: `Restore` & `Delete`
      - [`Restore`](./families.md#restore) & [`Delete`](./families.md#delete-family) action is applicable for the admin users.

## UI Rules
- Message when no household available: `No Household Available`
- Message when no family available: `No Families Available`
[Mockup of Current tab](https://drive.google.com/file/d/1KB34LQKVPOme9-MLwoQ05i6Z9e7gSisB/view?usp=sharing)
[Mockup of Archived tab](https://drive.google.com/file/d/1z_67LUip2RMlxDGGWRcyAMqfapUrmrP6/view?usp=sharing)


# View as Other user
## System Rule
- Admin user can see all families and all household of the family.

### UX Rules
- Applicable only for Current tab
- Allows user to see family list page on behalf of other users.
- By default list page is shown as per current login user. 
- User can select any other user from dropdown
- For admin user, see one option view as: `Admin` at top of dropdowm.  
  - This option will be applicable onlu for the admin users. On click, system will shows all families with all household details.
- When other user is selected, it shows list page according to the selected user. Means households under family will be shown as per selected user.

### UI Rules
[Mockup](https://drive.google.com/file/d/12dUx2upWYbdpNK79ZHQNL_A3yqfZ6dDn/view?usp=sharing)
- By default list page is shown as per login user. So it shows `You` in `View as`
- Shows dropdown icon near `You` or `User name`. On click of dropdown, shows all active users names.
- Current selected user is shown disable in dropdown.
- On click of any user, shows that user selected.
