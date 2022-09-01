# Browse family

- User can browse details of all families.

## UX Rule

- Families are shown in two tabs: `Current` & `Archived`
- `Current` tab shows the all current active family and `Archived` tab shows all archived family.
- Shows families count with each tabs.
- Only admin users can mark families as `Archived` and `Restore`. (Note: Normal user can see both archive or active families, but he/she can't be marked the families as archived or restored.)
- **Current tab**
  - With each family shows names of the associated users.  
  - In case of Multiple users for same role, shows each user's name in separate line in alphabetical order. Mark as lead user shown always first.
  - Families are shown in 3 groups in one table
    - Primary
    - Team member
    - Not associated
  - Column name:
    - Family Name
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
  - Families in which selected user has any role are shown under `Team member`. 
  - Families where selected user has no role are shown under `Not associated`.
  - Families which are marked as primary are shown under `Primary`.
  - Under each group, records are sorted in Alphabetical order
  - If there isn't any record in any group, that group won't be shown
  - Shows tick mark icon for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
  - Note: There is not much width in the list page that's why we only show the first character of the last name. For ex. `Keith V.`
  - If a family has no `Client Associate`, show `CA Pool` as a word for Client Associate column on the list page. [See more details](../tasks/ca-pool.md)
  - On mouse hover of family shows hover effect. On its click opens family detail page.
  - Vertmore actions of row:
    - Edit, Archive & Delete
      - `Archive` & `Delete` action is applicable only for Admin user.
      - On click of `Archive` action, opens confirmation dialog. On confirmation, the family will be archived. 
    - Move to Primary (Only for families under Team member)
    - Move to Team member (Only for families under Primary)

- **Archive tab**
  - Families are sorted on alphabetical order of the name.
  - New family can't be created in archived tab and existing families can't be edited.
  - Vertmore action: `Restore` & `Delete`
    - [`Restore`](./families.md#restore) &  [`Delete`](./families.md#delete-family) action is applicable for the admin users.
  - Shows only name column in this page.

## UI rules
[Mockup of Current tab](https://drive.google.com/file/d/1lM5vV_2dZoUJf1SDAnDpGrx7qLgQnfld/view?usp=sharing)
[Mockup of Archived tab](https://drive.google.com/file/d/1ehCnWXYORSMxeTRskSbiCoawnrYr194s/view?usp=sharing)


## View as Other user

### UX Rule
- Applicable only for Current tab
- Allows user to see family list page on behalf of other users.
- By default list page is shown as per current login user. 
- User can select any other user from dropdown
- When other user is selected, it shows list page according to the selected user. Means records under Primary, Team member and Not associated group will be shown as per selected user.
- Actions `Move to Primary` and `Move to team member` will be performed on behalf of selected user.

### UI Rule
[Mockup](https://drive.google.com/file/d/1bG0dVubCMpxgBXmWMyJ7PcXOzLrMdAX8/view?usp=sharing)
- By default list page is shown as per login user. So it shows `You` in `View as`
- Shows dropdown icon near Your or User name. On click of dropdown, shows all active users names
- Current selected user is shown disable in dropdown
- On click of any user, shows that user selected.



## Move to Primary

### UX Rule
- Applicable only for `Active` tab.
- User can mark any family under `Team member` to `Move to Primary`. 
- Families which are marked as `Move to Primary` will be shown under `Primary` section for that user.
- Also allows user to `Move to Team member` for the families which are marked as `Move to Primary`.


## Move to Team Member

### UX Rule
- Applicable only for `Active` tab.
- User can mark any family under `Priamry` to `Move to Team Member`. 
- Families which are marked as `Move to Team Member` will be shown under `Team Member` section for that user.
- Also allows user to `Move to Primary` for the families which are marked as `Move to Team member`.