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
- Reconciliation (Applicable only when family has Personal Controller)
  - When Clarius provide check writing services for families, they have a "Personal Controller" assigned to the family.  For checks-and-balances, they have a different person who reconcile the accounts monthly. 



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
- `Reconciliation` role is only available if `Personsal Controller` is selected for family. Also, If users removes PC, `Reconciliation` will also be removed.

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
