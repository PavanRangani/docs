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
- Shows count in header of the table. For e.g. `Service Scope (449)`
- Column name
    - Type
        - It shows entity type - Individual, Joint, Partnership, Foundation, Estate or trust.
        - Type won't be shown in repeated for the same family. 
    - Entity Name
        - If the entity name is too long, show it in multiline.	
    - Entity ID	
        - Shows the Entity ID.
    - Generation	
        - It shows generation.
        - Show `-` when Generation is applicable but it is pending (means value is not yet entered). For e.g. If Generation is not entered for any Individual, it will show `-`.
        - Show `N/A` when Generation field is not applicable. Generation field is not applicable for entities other than Individual and Joint, so it shows `N/A` for those entities.
    - Household	
        - Household is applicable only for Individual and Joint.
        - Shows `Yes` when Household is set to Yes and Shows `No` when Household is set to No.
        - Shows `-` when Household is still pending for setup. For e.g. If Household is not setup (means Yes or No) for Individual, shows `-` for the Individual.
        - Shows `N/A` when Household is not applicable. Household is not applicable for entities other than Individual and Joint or `Household is not setup`, so it shows `N/A` for those entities.
    - ASA Entity
        - ASA Entity is applicable for all entities except Individual and Joint.
        - Shows `Yes` when ASA Entity is set to Yes and Shows `No` when ASA Entity is set to No.
        - Shows `-` when ASA Entity is still pending for setup. For e.g. If ASA Entity is not setup (means Yes or No) for Partnership, shows `-` for the Partnership.
        - Shows `N/A` when ASA Entity is not applicable. ASA Entity is not applicable for Individual and Joint or `ASA Entity is not setup`, so it shows `N/A` for Individual and Joint.
    - Service Team	
        - Shows `Service Team` when `Household/ASA Entity is Yes` or `ASA Entity is Yes and Service team is Existing Household` and Service team is selected. 
        - Shows `-` when Service team is applicable but it is pending. For e.g. If any entity's `Household/ASA Entity is No` or `ASA Entity is Yes and Service team is Existing Household` and Service team is pending to select, shows `-` for that entity.
        - Shows `N/A` when Service team is not applicable. For e.g. If any entity's `Household/ASA Entity is not setup` or `Household/ASA entity is Yes but Service team option is not selected` or `ASA Entity is yes and Service Team is Own`, shows `N/A` for that entity.
    - Scope of Service
        - If entity has Scope of Service, shows the `Service Tier` and Additional address with comma separated.
        - Shows `-` when Scope of Service is pending. For e.g. If entity's `Household/ASA Entity is Yes` but the Scope of Service is not entered, shows `-` for that entity.
        - Shows `N/A` when Scope of Service is not applicable. For e.g. If entity's `Household/ASA Entity is not setup` or `Household/ASA Entity is No`, shows `N/A` for that entity.
    - Household team
        - Shows `Yes` when Household team is entered for the entity. For e.g. If any entity's `Household is Yes` or `ASA Entity is Yes and Service team is Own` and Household team is entered or `Household/ASA Entity is No` or `ASA Entity is Yes and Service team is Existing Household` and Service team is selected, shows `Yes` for the entity.
        - Shows `-` when Household team is pending for the entity. For e.g. If any entity's `Household is Yes` or `ASA Entity is Yes and Service team is Own` and Household team is not entered or `Household/ASA Entity is No` or `ASA Entity is Yes and Service team is Existing Household` and Service team is not selected, shows `-` for the entity.
        - Show `N/A` when Household team is not applicable. For e.g. If any entity's `Household/ASA Entity is not setup` or `ASA Entity is No and no select any option of Service team`, shows `N/A` for the entity.
    - ASA	
        - If `ASA details` are added, it shows the `Agreement Type` and `Version` of the ASA. For e.g. `Consulting, V 1.0`, `Friends & Family, V2.0`, `Standard, V 3.0`. 
        - Shows `-` when ASA is Pending. For e.g. If entity's `Household/ASA Entity is Yes` but ASA is not entered, shows `-` for that entity.
        - Shows `N/A` when ASA is not applicale. For e.g. If entity's `Household/ASA Entity is No` or `Household/ASA Entity is not setup`, shows `N/A` for that entity.
    - Portfolio
        - If Portfolio details is added, show `Yes` otherwise show `No`.
- On hover of each record, shows hover effect. On click, open the `Service Scope` tab of that entity on the new page.
- Shows `-` for the pending data and shows `N/A` for the not applicable in all columns.
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

#### Migration Status
- Values are: `All`, `Pending` & `Complete`. Default value is `All`.
- `Pending`:  It shows those entities where mandatory data are not entered.
- `Complete`:  It shows those entities where mandatory data are entered.

#### Generation
- Values are: `All`, `Assigned` & `Pending`. Default value is `All`.
- `N/A` is not shown in this dropdown.

#### Household
- Values are: `All`, `Yes`, `No` & `Pending`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the Household column.
- `N/A` is not shown in this dropdown.

#### ASA Entity
- Values are: `All`, `Yes`, `No` & `Pending`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the ASA Entity column.
- `N/A` is not shown in this dropdown.

#### Service Team
- Values are: `All`, `Assigned`, `Pending` & `N/A`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the Service Team column.

#### Scope of Service
- Values are: `All`, `Assigned`, `Pending` & `N/A`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the Scope of Service column.

#### Household Team
- Values are: `All`, `Assigned`, `Pending` & `N/A`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the Household Team column.

#### ASA
- Values are: `All`, `Assigned`, `Pending` & `N/A`. Default value is `All`.
- `Pending` - It shows those entities having `-` in the ASA column.

#### Portfolio
- Values are: `All`, `Yes` & `No`. Default value is `All`.
- When the user selects `Yes`, shows all entities whose Portfolio is setup.
- When the user selects `No`, shows those entities whose Portfolio is not setup.
