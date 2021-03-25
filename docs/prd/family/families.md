# Overview

As a Family office manager, Clarius group manages Family and its entities.

Family represents real life family. Family can have many legal entities.

## Entity

#### Name

Name of the Family. It should be unique.

#### Roles

With each family different users can be associated under different roles

- Director
- Advisor
- Associate Advisor
- Client Managers
- Assistant Client Manager
- Personal Controller
- Portfolio Analyst 

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



## Create family

Allows to create family by entering its name.

While creating users can be associated with this family.

All other role 

### UI requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScc_-I6YM9Phxhts83ZCt96k)

Error when family with given name already exists: `Family with this name already exists`



## Edit family

Allows to change name of the family.

Allows to change associated users with this family.



## Delete Family

Can be deleted any time.

When family is deleted, all legal entities created under it will also be deleted

### UI Requirement

On delete shows delete confirmation dialog.



## Mark as Lead

#### System Rule

- Mark as Lead is applicable only for `Advisor` role.
  - At a time, only one user can be marked as lead. 
  - It is also possible that not a single user is marked as a lead.

#### UX Rule

- Each `Advisor` has a checkbox and this checkbox is exclusive. Exclusive checkbox means that at a time only one of the values is true.
- In the list page or detail page
  - `L` is shown only under the `Advisor` column.
  - `L`  is shown as suffix in name of that user who has marked as lead.

#### UI Rule

Mockup //TODO



## Browse family

- User can browse details of all families.

### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSca4yOTFXumrya0SscBB4fps)

- Shows all families available in the system
- With each family shows names of the associated users.  
- In case of Multiple users for same role, shows each user's name in separate line in alphabetical order.
- Families are shown in 3 groups in one table
  - Primary
  - Team member
  - Not associated
- Families in which selected user has any role are shown under `Team member`. 
- Families where selected user has no role are shown under `Not associated`.
- Families which are marked as primary are shown under `Primary`.
- Under each group, records are sorted in Alphabetical order
- If there isn't any record in any group, that group won't be shown
- On mouse hover of family shows hover effect. On its click opens family detail page.
- Vertmore actions of row:
  - Edit & Delete
  - Move to Primary (Only for families under Team member)
  - Move to Team member (Only for families under Primary)
  
  

## View as Other user

- Allows user to see family list page on behalf of other users
- By default list page is shown as per current login user. 
- User can select any other user from dropdown
- When other user is selected, it shows list page according to the selected user. Means records under Primary, Team member and Not associated group will be shown as per selected user.
- Actions `Move to Primary` and `Move to team member` will be performed on behalf of selected user.

### UI requirement

- By default list page is shown as per login user. So it shows `You` in `View as`
- Shows dropdown icon near Your or User name. On click of dropdown, shows all active users names
- Current selected user is shown disable in dropdown
- On click of any user, shows that user selected.



## Move to Primary

- User can mark any family under `Team member` to `Move to Primary`. 
- Families which are marked as `Move to Primary` will be shown under `Primary` section for that user.
- Also allows user to `Move to Team member` for the families which are marked as `Move to Primary`.



## Move to Team Member

- User can mark any family under `Priamry` to `Move to Team Member`. 
- Families which are marked as `Move to Team Member` will be shown under `Team Member` section for that user.
- Also allows user to `Move to Primary` for the families which are marked as `Move to Team member`.



## Browse Family details

Mockups //TODO

- Shows associated users and legal entities of the family in this page
- Legal entities are shown in two tabs : `ACTIVE` & `DECEASED/TERMINATED`
  - In Active tab, For each type of legal entity shows one table
  - In Deceased tab, shows table for those legal entity which has records 
    - For e.g. If there isn't any trust which is terminated, table for trust won't be shown
  - Under each table records are sorted in alphabetical order
  - Vertmore actions of each row in `ACTIVE` tab
    - Deceased (for individual)
    - Terminate (For entities other than Individual)
    - Delete
  - Vertmore actions of each row in `DECEASED/TERMINATED` tab
    - Undo Deceased (for individual)
    - Undo Terminate (For entities other than Individual)
    - Delete
  - On mouse hover of any record shows hover effect.
  - On click of any row opens workspace page of that legal entity
  - On Deceased/Terminate, opens Deceased or Terminate dialog. 
  - On Delete, opens delete confirmation dialog
  - See [deceased-terminated-delete-legal-entity](../legal-entities/deceased-terminated-legal-entity) for more details on Delete, Decease and Terminate action.
  - On click of ADD button with each table, opens add dialog of that legal entity.



## Download as Excel

### UX Rule

- Allows to download all details of `Families/Teams` as Excel.
- Excel file name pattern: `families-teams-{date in mm-dd-yyyy format}.xlsx`.
  - for e.g. when user download excel of `Families/Teams` on 30th October, 2020, downloaded file name will be `families-teams-10-30-2020.xlsx`.
- Show family records in the alphabetical order of family name. Do not show group by Primary, Team Member and Not Associated.
- If multiple users are added to a role, all those users in a single shell are shown in a new line and separated by commas(,).

### UI Rule

Mockup //TODO



