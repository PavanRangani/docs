# Overview

As a Family office manager, Clarius group manages Family and its entities.

Family represents real life family. Family can have many legal entities.

## Entity

#### Name

Name of the Family. It should be unique. It's a mandatory.

#### Roles

With each family different users can be associated under different roles

- Director
- Advisor (Mandatory role)
- Investment Director
- Associate Advisor
- Investment Associate (Mandatory role)
- Client Managers (Mandatory role)
- Client Associate
- Operations (Mandatory role)
- Personal Controller

For each roles multiple users can be associated.

For any particular role, one user can be associated only once. Duplicate is not allowed.

#### Legal entities

One family can have many legal entities.

There are total 6 types of Legal entities available

- Individual
  - Represent any person of the family
- Joint
  - Represents an entity when two individuals are combinedly filing their tax returns.  
- Partnership
  - Represents any partnership firm
- Foundation
  - Represents any Foundation of this family
- Estate
  - Represents estate of any deceased person of this family
- Trusts
  - Represents any Trust of this family 



## Add Family

### System Rule

- Allows to create family by entering its name. While creating users can be associated with this family.
- Same user can't be added in same role but it can be added in different role.

### UX Rules

- If the user enters name which is already exits then system shows error message.
- Same user can't be added in same role but it can be added in different role.
- If the family has more than user then at least one user is mark as lead otherwise system shows error message.

### UI Requirement

[Mockups](https://drive.google.com/file/d/1CDnA1iH0BT2TRKPdRd-FYA6NtH_304J1/view?usp=sharing)

Error when family with given name already exists: `Family with this name already exists`

Error when same user is added in same role: `Duplicate value is not allowed`

Error when any users is not marked as lead: `At least one user should be marked as lead`



## Edit family

Allows to change name of the family.

Allows to change associated users with this family.



## Delete Family

Only Admin users can Delete the family

When family is deleted, all legal entities created under it will also be deleted

In some cases, family delete is not possible for e.g. Family has some tasks

### UI Rule
[Mockup](https://drive.google.com/file/d/1lmwTFLqasDng30DhzkGUZflhs51bCMxT/view?usp=sharing)

On delete, shows delete confirmation dialog.

### Design Decision
**When family has tasks, family delete action is being failed, Then why we are not showing family delete not possible dialog?**
Actually, there is no use case of clarius group in real life to delete family and we haven't added any validation from UI side while deleting family just to increase the effort of UI team. In this case, validation failed from the server-side and a message will appear in toast on UI.



## Mark as Lead

#### System Rule

- Mark as Lead is applicable for all roles having more than one users. 
- At a time, only one user can be marked as lead. 

#### UX Rule

- Each roles having more than one users has a checkbox and this checkbox is exclusive. Exclusive checkbox means that at a time only one of the values is true.
- In the list page or detail page
  - Show tick mark as suffix if that user is mark as lead for that family.

#### UI Rule

[Mockup](https://drive.google.com/file/d/16_tMyvKwjduVcvZRvvCtdjVmEdKAgKvg/view?usp=sharing)



## Browse family

- User can browse details of all families.

### UX Rule

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
  - Families in which selected user has any role are shown under `Team member`. 
  - Families where selected user has no role are shown under `Not associated`.
  - Families which are marked as primary are shown under `Primary`.
  - Under each group, records are sorted in Alphabetical order
  - If there isn't any record in any group, that group won't be shown
  - Shows tick mark icon for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
  - Note: There is not much width in the list page that's why we only show the first character of the last name. For ex. `Keith V.`
  - If a family has no `Client Associate`, show `Ca Pool` as a word for Client Associate column on the list page.
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
    - `Restore` &  `Delete`  action is applicable for the admin users.
  - Shows only name column in this page.

### UI rules
[Mockup of Current tab](https://drive.google.com/file/d/1lM5vV_2dZoUJf1SDAnDpGrx7qLgQnfld/view?usp=sharing)
[Mockup of Archived tab](https://drive.google.com/file/d/1ehCnWXYORSMxeTRskSbiCoawnrYr194s/view?usp=sharing)



## Archive

### System Rule
- Active family can be archived anytime
- Only Admin users can Archive the family
- When the family is archived, all of its team members are removed from all roles.
- When any family is archived, the system will auto-archive all entities of that family.

### UX Rule
- Click on `Archive`, shows confirmation dialog.

### UI Rules
[Mockup of confirmation dialog](https://drive.google.com/file/d/19llPJW93tF04szyBMkX07QUWuL8hP0xl/view?usp=sharing)



## Restore

### System Rule
- Only `Archived` family can be restored.
- Only Admin users can Restore the family
- When the family is restored, It opens Edit dialog of family because there are some roles which are mandatory so user can fill those roles before the Restore
- When any family is restored, the system will activate all the archived entities of that family. (Here, only the archived entities will be marked as active, not those that were already Deceased or Terminated)

### UX Rule
- Click on `Restore`, shows confirmation dialog. On confirmation, opens the edit dialog of families where user enters a families roles.
  - **Note**: Consider family is restored once the user enters all mandatory roles in the edit family dialog.

### UI Rule
[Mockup of confirmation dialog](https://drive.google.com/file/d/1Lb_BhMBAGzOWXgzeB4cjRf2ngDFhE3SZ/view?usp=sharing)



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



## Browse Single Family details

### UX Rule

- Shows associated users and legal entities of the family in this page
- If active family has no `Client Associate`, show `Ca Pool` as a word for Client Associate.
- Shows tick mark icon for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
- New legal entities can't be created for an archived family. Shows `Archived` tag for the archived family.
- Legal entities are shown in two tabs: `Current` or `Archived` & `DECEASED/TERMINATED`
  - When family is Archived, tab name will be changed from `Current` to `Archived`.
  - **In Active tab,**
    - For each type of legal entity shows one table

    - Column for Individuals
      - Name
      - Spouse
      - Children
      - Father
      - Mother

    - Column for Joint
      - Name

    - Column for Partnership
      - Name
      - Established on
      - Purpose of Partnership

    - Column for Foundations
      - Name
      - Established on
      - Purpose of Foundation

    - Column for Estates
      - Name
      - Established on
      - Deceased

    - Column for Trusts
      - Name
      - Date of Formation
      - Type
      - Details
      - Purpose of Trust

    - Vertmore actions of each row in `ACTIVE` tab
      - Deceased (for individual)
      - Terminate (For entities other than Individual)
      - Delete
      - On Deceased/Terminate, opens Deceased or Terminate dialog.
      - 
    - On click of ADD button with each table, opens add dialog of that legal entity.

  - **In Deceased/Terminated tab**, 
    - shows table for those legal entity which has records 
    - For e.g. If there isn't any trust which is terminated, table for trust won't be shown
    - Column for Individual
      - Name
      - Deceased Date
    - Column for Joint, Partnership, Foundation, Estate
      - Name
      - Termination Date
    - Column for Trust
      - Name
      - Termination Date
      - Termination Notes
    - Vertmore actions of each row in `DECEASED/TERMINATED` tab
      - Undo Deceased (for individual)
      - Undo Terminate (For entities other than Individual)
      - Delete
      - On Undo Deceased/Undo Terminate, opens confirrmation dialog.

  - Under each table for both tabs records are sorted in alphabetical order
  - On mouse hover of any record shows hover effect.
  - On click of any row opens workspace page of that legal entity
  -  On Delete, opens delete confirmation dialog
  - See [deceased-terminated-delete-legal-entity](../legal-entities/deceased-terminated-legal-entity) for more details on Delete, Decease and Terminate action.


### UI Rule

[Mockups of Current Tab](https://drive.google.com/file/d/1eBDtFL4SYSucH7CwSWiolf1yNbdKBaLu/view?usp=sharing) & [Deceased/Terminated tab](https://drive.google.com/file/d/11vEMsisFR7SoknPPiLq6ULxZNTNF362Z/view?usp=sharing)
[Mockup of Archived family](https://drive.google.com/file/d/1MQrXe3svdh8SLfAww6qx98csg_PZHGST/view?usp=sharing)

- When any of the column has long values, shows it in next line. Never shows ellipses.
-  `Purpose` column in Trust , Foundation and Partnership are shown with maximum width of 1000px. Means for large screen, it never shown in more than 1000px.



## Download as Excel

### UX Rule

- Applicable only for Active tab

- Allows to download all details of the active`Families/Teams` as Excel.
- Excel file name pattern: `families-teams-{date in mm-dd-yyyy format}.xlsx`.
  - for e.g. when user download excel of `Families/Teams` on 30th October, 2020, downloaded file name will be `families-teams-10-30-2020.xlsx`.
- Show family records in the alphabetical order of family name. Do not show group by Primary, Team Member and Not Associated.
- Shows (L) for user marked as a lead. `Mark as lead` user shown first in the roles columns and then the other user is alphabetically sorted.
- If multiple users are added to a role, all those users in a single shell are shown in a new line and separated by commas(,).

[Sample Excel File](https://docs.google.com/spreadsheets/d/1-9x4wQpmfF_1zKxPxzT9ZsGddeZDi8K7/edit?usp=sharing&ouid=108870014519956519924&rtpof=true&sd=true) 



