# Quick update team

## Overview
- When Clarius team wants to change the team member for any single entity, they can change it using the pencil icon of that entity. But when they wants to change any clarius user from all the entities of that family, we have provided this feature so that they can do it easily. (Without editing each entity manually)

## System rules
- Allows to replace any user in any particular role with other user. Doesn't allow to replace user directly with other user (Only role wise allowed)
- When user is replaced, it means entity team is updated. So it will update Tasks and triggers of that entity. 

## UX Rule
- When user clicks on this button, system opens the `Quick Update Team` dialog.
- This button is applicable only when any table has entities.
- Dialog allows user to select any user first. User drodpown shows all team members of this family's entities in alphabetical sorted. Its mandatory to select user.
- When user is select, shows various roles of the selected user
- Allows user to select any particular role and choose replacement user. 
- Role dropdown show all the roles where user is currently associated across all entities of this family. When there is only single Role, doesn't show dropdown.  
- Replacement user dropdown show all the active clarius users in alphabetical order. 
- When replacement user is selected, it shows summary about how many entities will be updated

## UI Rule
- When dialog is open, it shows only single statement with `User` dropdown. [See this](https://drive.google.com/file/d/1XZ3GSUDhkTzqS8qkpMVWcoEDsn-ymS2A/view?usp=sharing)
    - Statement is: `Select the user you want to replace {User drodpown}`
- When user is selected
    - Statement is: `{selected user name} is associated as {role 1}, {role 2} & {role 3}`
    - Each roles are separated by `,` and show `&` for last and last to second role.
    - Selected user name is shown in bold style.
- If the selected user is associated in single role for all entities, shows this statement. 
    - Statement is: `Replace {selected user name}` as `{associated role name}` with other user `User` dropdown. [See this](https://drive.google.com/file/d/1aaDpzx34su_nudlW6nF0tIrR0GNb5bGw/view?usp=sharing)
- If the selected user is associated with more than one role for all entities, shows each role in statement
    - Statement is: `Replace {selected user name}` at `{Roles dropdown}` with other user `User` dropdown. [See this dropdown](https://drive.google.com/file/d/1yVKLZEDSBbkxJjn0yK85uoeWFQu29VIv/view?usp=sharing)
        - `Roles` - It is a dropdown of the Roles. Default `All` option is selected. [See when role is selected](https://drive.google.com/file/d/1Wpf5dGoSJyCjpesQIDwYoK98iBxLhDR8/view?usp=sharing)
- User name is shown in bold style and Role name is shown in blue color.
- When user add all details, system shows one preper message at last to indicate how much entities are updated.
    - Statement is: `Total {count of matched entities} entities out of {Total entities count} will be updated.`

## Scenarios
- Quick update action not available
- User associated in only one role - Replace
- User associated in multiple role - Replace at all places
- User associated in multiple role - Replace at single role