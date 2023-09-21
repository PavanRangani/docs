# Scope Services

## Overview

Purpose of this View is to keep an eye on the migration work of Scope of Service work. This view shows a list of all entities and shows which details (`Household/Service team details`, `Scope of service`, `Team`, `ASA`, `Portfolio`) are entered and which details are pending.

This view is also useful in the future when Clarius team onboards any new family. They can see How much details are entered and how much is pending for all the entities of that new family. 


## Browse the page of Scope Services views

### System Rule
- It shows all active entities of the Active family.
- For each entity, it will show `Household/Service team` details, `Scope of service`, `Household Team`, `ASA` details and `Portfolio` details are entered or not. 

### UX Rule
- Records are grouped by family in alphabetical order.
- Shows family id in a bracket of the family header.
- Shows proper message when no data is available.
- Column name
    - Type
        - It shows entity type -Individual, Joint, Partnership, Foundation, Estate or trust.
        - Type won't be shown in repeated for the same family. 
    - Entity Name
        - If the entity name is too long, show it in multiline.	
    - Entity ID	
        - Shows the Entity ID.
    - Generation	
        - Applicable only for Individual and joint. It shows generation.
    - Household	
        - When the household is not set, show `No`. Once the household is set to Yes, show `Yes` here.
    - Service Team	
        - Shows `Service Team` if it is available for an entity otherwise shows `-`.
    - ASA	
        - If ASA details are added, it shows the `Agreement Type` and `Version` of the ASA else it shows `No`. For e.g. `Consulting, V 1.0`, `Friends & Family, V2.0`, `Standard, V 3.0`. 
    - Portfolio
        - If Portfolio details is added, show `Yes` otherwise show `No`.
- On hover of each record, shows hover effect. On click, open the `Service Scope` tab of that entity on the new page.
- Sorting order under each family: Records are primary sorting on entity type in order of -Individual, Joint, Partnership, Foundation, Estates & Trust and secondary sorting in alphabetical order of entity name.

### UI Rule
[See this mocks flow](https://drive.google.com/drive/u/0/folders/1I84i-rOO1d9x9OtMVMVRMb3skHTZP6Z3)
- Placeholder message when no data available: `No Records Found`.


## Pagination
- Records are shown in the list page with a pagination rule.
- At a time only the first 100 records are loaded. When the user scrolls up to 100, the system will show the next 100 records.


## Filter
### UX Rule
- Allows records using `Family`, `Status`, `Household`, `ASA` & `Portfolio`
- Show the `RESET` button to the right side when the filter is applied. On click, the filter will be reset to the default state.

#### Family
- Multi-select filter of the family. Default value is `All`.
- Shows all active families in alphabetical order.

#### Household
- Values are: `All`, `Yes` & `No`. Default value is `All`.
- When the user selects `Yes`, shows only those entities having household is Yes.
- When the user selects `No`, shows all entities having household is No.

#### Status
- Values are: `All`, `Pending` & `Complete`. Default value is `All`.
- `Pending`:  It means the entity has either Generation, Household Service team has yet not entered
- `Complete`:  It means the entity has Generation, Household or Service team entered

#### ASA
- Values are: `All`, `Yes` & `No`. Default value is `All`.
- When the user selects `Yes`, shows all entities whose ASA is set up.
- When the user selects `No`, shows those entities whose ASA is not setup

#### Portfolio
- Values are: `All`, `Yes` & `No`. Default value is `All`.
- When the user selects `Yes`, shows all entities whose Portfolio is setup.
- When the user selects `No`, shows those entities whose Portfolio is not setup.
