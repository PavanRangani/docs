# Relationship managers

## System requirement

- With each family different users can be associated under different roles

  - Available roles  under `Wealth management`

    - Director

    - Advisor
    - Client managers
    - Assistant Client Manager
    - Bill Pay (lead)

  - Available roles  under `Investments`

    - Director
    - Principal
    - Analyst

- At the time of creating new family or editing existing family, system allows to select multiple users for each type of roles 

- In family list page

  - List page shows all families available in the system
  - For each family shows names of the associated users
  - Families are shown in 3 groups
    - Primary
    - Team member
    - Not associated
  - Families in which login user has any role are shown under `Team member`. Other families are shown under `Not associated`  section
  - User can only add/edit data of the family which are under `Team member`.  
  - User having `Admin` role can add/edit data of any family regardless of its role.
  - User can mark any family under `Team member`to `Move to lead`. Such families are shown under `Primary` section to that user. `L` is shown as suffix  in name of that user in list page.

## UX requirement

- Family add/edit dialog: For each type of roles, allows to select multiple users
- Relationship Manager dialog shows names of the selected users
- Family list page shows  names of the selected users.  In case of Multiple names, shows each name in separate line

