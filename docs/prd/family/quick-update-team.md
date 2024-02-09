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
- When any entity has `CA Pool` user in the client associate, shows `CA Pool` in the user dropdown.
- When user is select, shows various roles of the selected user
- Allows user to select any particular role and choose replacement user. 
- Role dropdown show all the roles where user is currently associated across all entities of this family. 
- Replacement user dropdown show all the active clarius users in alphabetical order. 
- When replacement user is selected, it shows summary about this user will be rpelaced with that user.

## UI Rule
- When dialog is open for first time, shwos dialog with 3 header. like [this](https://drive.google.com/file/d/1tNNVjhra2U7NwtsKlRVhhkljVHLTT-Lm/view?usp=sharing)
- When user selects the replace by user and that user is associated in the single role, 3 header shows the associated role like [this](https://drive.google.com/file/d/1TURsVueuXPqUiq1Fq8jzfoZcyZexd7uK/view?usp=sharing)
- When user selectst the replace by user and that user is associcated in the multiple role, 3rd header shows the radio button to choose all user or associated user.
    - When user select All, dialog look like [this](https://drive.google.com/file/d/1f_dAEMYaW1PDI9DQMfeRdWiBjVGwmZ7b/view?usp=sharing)
    - When user select other option, shows role dropdown like [this](https://drive.google.com/file/d/1yAWQtwPbYAIL1NoMJK2LEBoYbqlX2fHs/view?usp=sharing)

- Information message
    - When user is replaced in single role, message like [this](https://drive.google.com/file/d/1rtkMG-P0CLw73LQiKwu2nyCLktoejT5-/view?usp=sharing) & [this](https://drive.google.com/file/d/1KMhUeaEdTKJM8CYAM-9QMBtJ1UDyjVvg/view?usp=sharing)
    - When user is replaced in all roles, message like [this](https://drive.google.com/file/d/18M9XukNerJAfSA0J7D_Ln1S4chBxT-zK/view?usp=sharing)
