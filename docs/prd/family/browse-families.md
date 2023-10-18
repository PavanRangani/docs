# Browse family

- User can browse details of all families.
- Users can see the other user's family.

## UX Rules
- Families are shown in two tabs: `Current` & `Archived`
- `Current` tab shows the all current active family and `Archived` tab shows all archived family.
- Shows families count with each tab.
- Shows proper message when no family is available in any tab.
- Shows Household details under each family. 
- Shows proper message when a family has no households.
- Shows only those families where the login user is added in any household team role.
- Shows all households of family, whether a login user is added or not added to the household team.
  - E.g.  Family has four Households but the login user is associated with only one Household. But the family list page shows all 4 households.
- Families are sorted in alphabetical order of name.
- Shows family ID with family name. For e.g. `Birdwell (#4)`.
- Family name will be linked. On click, opens family details on the same page.

- Only admin users can mark families as `Archived` and `Restore`. (Note: Normal users can see both archive or active families, but he/she can't mark the families as archived or restored.)

- **Current tab**
  - With each family show the names of the associated users.  
  - In case of Multiple users for the same role, shows each user's name in separate line in alphabetical order. Mark as lead user shown always first.
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
      - `Personal Controller` types roles are shown first and Reconciliation types roles are shown second.
      - Show the role name in brackets with each user name. E.g `Arun K. (PC)` or `Keith V. (Rec.)`
  - Under each family: Households are primarily sorted in ascending order of Generation and Secondary sorting in alphabetical order of household Name.
  - If there isn't any household in any family, that family will be shown to all users. (Otherwise such a family will not be accessible to anyone)
  - Shows tick mark icon for user marked as a lead. `Mark as lead` user is shown first in the roles columns and then the other user is alphabetically sorted.
  - Note: There is not much width on the list page that's why we only show the first character of the last name. For ex. `Keith V.`
  - If a family has no `Client Associate`, show `CA Pool` as a word for the Client Associate column on the list page. [See more details](../tasks/ca-pool.md)
  - Shows `+` button to the right side of the header. On click, opens the add family dialog.
  - On mouse hover of the family shows hover effect. (No vertmore actions available)
  - On its click opens the contact tab of that household.
  - Shows Excel icon to the right side of the header. On click, the system will export the family data on Excel.

- **Archive tab**
  - Layout and Column will be the same as the current tab. Other changes are:
    - New families can't be created in the archived tab and existing families can't be edited.

## UI Rules
- Message when no household available: `No Household Available`
- Message when no family available: `No Families Available`
[Mockup of Current tab](https://drive.google.com/file/d/1KB34LQKVPOme9-MLwoQ05i6Z9e7gSisB/view?usp=sharing)
[Mockup of Archived tab](https://drive.google.com/file/d/1z_67LUip2RMlxDGGWRcyAMqfapUrmrP6/view?usp=sharing)


# View as Other user
## System Rule
- Admin users can see all families and all households of the family.

### UX Rules
- Applicable only for the Current tab
- Allows users to see the family list page on behalf of other users.
- By default list page is shown as per the current login user. 
- The user can select any other user from a dropdown
- For admin users, see one option view as: `Admin` at the top of the dropdown.  
  - This option will be applicable only for the admin users. On click, the system will show all families with all household details.
- When another user is selected, it shows a list page according to the selected user. This means households under family will be shown as per the selected user.

### UI Rules
[Mockup](https://drive.google.com/file/d/12dUx2upWYbdpNK79ZHQNL_A3yqfZ6dDn/view?usp=sharing)
- By default list page is shown as per login user. So it shows `You` in `View as`
- Shows dropdown icon near `You` or `User name`. On click of the dropdown, shows all active user's names.
- Current selected user is shown disabled in the dropdown.
- On click of any user, shows that user selected.
