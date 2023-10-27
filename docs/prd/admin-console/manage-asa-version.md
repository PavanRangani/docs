# Manage ASA Versions

## Overview
- Admin users can manage ASA versions (Add, Edit, Delete, Archive) from this page and can also see current and historical usage of each versions

## Entity Details
- Effective From
    - It is a mandatory. Its a date input field.
    - If ASA type has existing version, it is always greater than the latest version's effective date.
- Type
    - It is mandatory field.
    - Values are: `Consulting`, `Friends & Family`, `Standard`, `Donor Advised Fund` & `Donor Advised Fund - Managed`.
- Version
    - It is mandatory field.
    - It is a Alphanumeric field. For e.g. `V1.0`, `1`, `1.0.1` or `Legacy`.
- Notes
    - It is a free form text input field.


## Add ASA Version
### System Rules
- Only admin user can add ASA Version.
- Can be added anytime.

### UX Rules
- `Effective From` date is always greater than the date of the latest versions of the same type. Otherwise system shows error message. See [this](https://drive.google.com/file/d/1hBv5bfpCom8vCpWa1vROJaD0sfOvy8P9/view?usp=sharing)
- `Donor Advised Fund` & `Donor Advised Fund - Managed` type doesn't shown in the dropdown.

### UI Rule
- [Mockup](https://drive.google.com/file/d/1j4iBy4z_CbrNacANK3RYd4owqFge9cqS/view?usp=sharing)
- Error message: `It should be > {Effective from date of latest version}`


## Edit ASA Version
### System Rules
- Can be editable anytime.
- When the user edit version details, the system will auto update the details of ASA where this version is used. (Both Current or History)
- Type can't be changed.
- `Donor Advised Fund` & `Donor Advised Fund - Managed` type version can't be editable.

### UX Rule
- Type field is shown disable. 

### UI Rule
- [See this](https://drive.google.com/file/d/1zXA72FJQe_8o4UNJkOs3dYjVoscjibN0/view?usp=sharing)


## Delete ASA Version
### System Rule
- Can be deleted only when it is not used in `ASA details` (Current or Historical) of any entity.
- `Donor Advised Fund` & `Donor Advised Fund - Managed` type version can't be deleted.

### UX Rule
- When ASA version is used in any entity's `ASA Details`, system shows delete not possible dialog. Otherwise system shows delete confirmation dialog.

### UI Rule
- [Delete not possible dialog](https://drive.google.com/file/d/1ktIKw3eOFHJAA99miuZNbKPXe2ZNlKXO/view?usp=drive_link)
- [Delete confirmation dialog](https://drive.google.com/file/d/1XhAnJ6zqftX2aJdTHWA5f8gAv8NsGYGh/view?usp=sharing)


## Archive 
### System Rule
- Can be archived only when it is not used in any entity as a current version.
- If the version is used once, it can not be deleted. In such cases, clarious user should archive that version.
- Archived versions are not available for use in ASA dialog
- `Donor Advised Fund` & `Donor Advised Fund - Managed` type version can't be archived.

### UX rule
- Shows `Archive` action in vertmore. On click, marks that version as a Archived.


## Browse ASA Version
### System Rule
- Applicable only for admin user.
- Shows all ASA versions of each type.

### UX Rule
- Shows proper message when no records Available.
- ASA Versions are shown in grouped by ASA type in order of `Consulting`, `Consulting with Investment Services`, `Friends & Family` & `Standard`.
- If any group has no version, that particular group won't be shown.
- Shows `+` button to the right side of the header. On click, opens the add ASA version dialog.
- Columns
    - Effective From
        - Shows `N/A` for `Donor Advised Fund` & `Donor Advised Fund - Managed` type.
    - Version
        - Shows `N/A` for `Donor Advised Fund` & `Donor Advised Fund - Managed` type.
    - Usage in Household/Entities
        - It shows the count of Entities where this version is currently used. When version is not used anywhere currently it shows `0` in this column. 
        - Shows an icon to see usage details (current or historical). On click, opens version usage dialog. [See more details](#show-current-or-historical-data)
    - Status
        - It is either `Current` or `Archived`
        - Shows `N/A` for `Donor Advised Fund` & `Donor Advised Fund - Managed` type.
    - Notes
        - If notes is too long, shows it in multi line.
        - Shows `N/A` for `Donor Advised Fund` & `Donor Advised Fund - Managed` type.
- Sorting order under each group: Descending order of Effective From. (Latest version is shown at top)
- On hover, shows hover effect and vertore action menu at right side.
    - Vertmore actions: `Edit`, `Archive`
    - Vertmore action and hover effect won't be applicable for `Donor Advised Fund` & `Donor Advised Fund - Managed` type.
    - On click of `Edit`, opens the edit dialog.
    - `Archive` action is applicable only when the version is not used in any entity as the current version.  

### UI Rule
- Placeholder message: `No Records Available`
- [Mockup](https://drive.google.com/file/d/1oPiw4IlxEYusMyPMvJIqpkI58ddcbxFQ/view?usp=sharing)



## Show Current or Historical data
### System Rule
- Users can see whether a version is added to an entity in the current or past.

### UX Rule
- Entities are shown in 2 tabs: `Current` & `History`
    - `Current`: It shows entity where this version is in use as Current version.
    - `History`: It shows entity where this version was used as historical version.
- Show count of entity with each tabs.
- When any tab has no entities, shows that tab in disabled mode.
- When version has current records, default tab is `Current` tab.
- When version hasn't current records, default tab is `History` tab.
- Shows proper message when any tab has no records available.
- Entities are shown in grouped by entity type in order of - `Individuals`, `Joints`, `Partnerships`, `Foundations`, `Trusts`, `Estates`.
- If entity type has no records, entity won't be shown.

#### Current tab
- Column name
    - Name
        - Shows entity name as a link. On click, opens that entity in the new tab with the `Service Scope` tab. 
    - Execution Date
        - It shows the execution date of this version for this entity.
- Sorting order under each group: Records are sorted on alphabetical order of Name.

#### History tab
- Column Name
    - Name
        - Shows entity name as a link. On click, opens that entity in the new tab with the `Service Scope` tab.
    - Execution Date
        - It shows the execution date of this version for this entity.
    - End Date
        - It shows the end date of this version for this entity. (Based on new version applicable date)
- Sorting order under each group: Records are sorted on alphabetical order of Name. 

### UI Rule
- Placeholder message: `No Records Found`. [See this](https://drive.google.com/file/d/12iEQaf-ssAOMpXmQUf5WZF7pT9uXD5z4/view?usp=sharing)
- [Current tab](https://drive.google.com/file/d/1yFLz8peJJMsNXOP895ju6DlHHPbJG_N1/view?usp=sharing)
- [History tab](https://drive.google.com/file/d/1UFLnPsN2IOby7AW1vRu9cmo89acaoIwn/view?usp=sharing)
