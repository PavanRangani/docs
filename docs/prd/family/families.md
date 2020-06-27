## Overview

As a Family office manager, Clarius group manages Family and its entities.

Family represents real life family. Family can have many legal entities.

## Entity

#### Name

Name of the Family. It should be unique.

#### Roles

With each family different users can be associated under different roles

- Director
- Advisor
- Client Managers
- Assistant client manager
- Portfolio Analyst 

For each roles multiple users can be associated.

For any particular role, one user can be associated only once. Duplicate is not allowed.

#### Legal entities

One family can have many legal entities.

There are total 6 types of Legal entities available

- Individual
  - Represent any person of the family
- Joint
  - Represents an entity when two individuals are combinely filing their tax returns.  
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

### UI requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScc_-I6YM9Phxhts83ZCt96k)

Error when family with given name alreay exists: `Family with this name already exists`

## Edit family

Allows to change name of the family.

Allows to change associated users with this family.

## Delete Family

Can be deleted any time.

When family is deleted, all legal entities created under it will also be deleted

### UI Requirement

On delete shows delete confirmation dialog.

## Browse family

- User can browse families in which user has any role. 
- User having `Admin` role can browse details of all family (Regardless of user has any role in that family or not)

### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSca4yOTFXumrya0SscBB4fps)

- Shows all families available in the system

- With each family shows names of the associated users.  
- In case of Multiple users for same role, shows each user's name in separate line in alphabetical order.
- Families are shown in 3 groups in one table
  - Primary
  - Team member
  - Not associated
- Under each group, records are sorted in Alphabetical order
- By default list page is shown as per login user's role. User can view list page for any other user. Allows to select any other user  from dropdown.
- Families in which selected user has any role are shown under `Team member`. 
- Families where selected user has no role are shown under `Not associated`  section.
- User can mark any family under `Team member`to `Move to lead`. Such families are shown under `Primary` section for that user. `L` is shown as suffix  in name of that user in list page.
- On mouse hover of family shows hover effect. On its click opens family detail page.
- For Families in which login user has no role, hover effect is not shown.
- Vertmore actions of row:
  - Edit & Delete
  - Move to Lead (Only for families under Team member)

- Only user having `Admin` role can browse details of all family (Regardless of user has any role in that family or not)

## Browse Family details

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScZXYDAgTWUfm4A6J-D2dpNw)

- Shows associated users and legal entities of the family in this page
- Legal entities are shown in two tabs : `ACTIVE` & `DECEASED/TERMINATED`
  - In Active tab, For each type of legal entity shows one table
  - In Deceased tab, shows table for those legal entity which has records 
    - For e.g. If there isn't any trust which is terminated, table for trust won't be shown
  - Under each table records are sorted in alphabetical order
  - Vermore actions of each row in `ACTIVE` tab
    - Deceased (for individual)
    - Teminate (For entities other than Individual)
    - Delete
  - Vermore actions of each row in `DECEASED/TERMINATED` tab
    - Undo Deceased (for individual)
    - Undo Teminate (For entities other than Individual)
    - Delete
  - On mouse hover of any record shows hover effect.
  - On click of any row opens workspace page of that legal entity
  - On Deceased/Terminate, opens Deceased or Teminate dialog. See [deceased-terminated-legal-entity](../legal-entities/deceased-terminated-legal-entity) for more details
  - On Delete, opens delete confirmation dialog
  - On click of ADD button with each table, opens add dialog of that legal entity.

