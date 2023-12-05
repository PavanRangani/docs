# Browse Single Family details

## UX Rule

- New legal entities can't be created for an archived family. Shows `Archived` tag for the archived family.
- Legal entities are shown in three tabs: `Current` or `Archived` & `Deceased` & `Terminated`
  - When family is Archived, tab name will be changed from `Current` to `Archived`.
  - `Deceased` tab will show deceased Individual and `Terminated` tab will show all terminated entity.
- Shows `Archived` tag in header for the archive tab. 
- Shows `Original ASA Signed` date at right side of the family name header. 
  - Format: `Original ASA Signed: Apr 04, 2023`

### Current tab
- It shows `Households`, `ASA Entities`, `Individuals`, `Joints`, `Partnerships`, `Foundations`, `Estates` & `Trusts`.

#### Family Narrative
- Instead of showing all the narrative, shows narrative in two lines only. Shows `View more` link to expand full narrative.
- User can able to edit family narrative. [See more details](./families.md#family-narrative)
- If the narrative box has a height greater than the default height (2 line), a `View Less` button will appear on the bottom right of the box.
  - When the user clicks on the `View Less` button, the system will show the `View More` button.

#### Households
- Shows Individuals and Joints having houseohld is Yes.
- Whole section won't be shown when it has no any household available.
- Columns name
  - Name
    - If Entity name is too long, shows it in multiline. (Never shows elipsis)
  - Entity ID
    - Shows Entity ID in this format: {Family ID} - {Entity ID}. For e.g. `5 - 12`
  - Generation
    - Shows generation
  - Service Scope
    - Show Selected service tier of the household.
    - Shows `-` when no service tier is selected.
  - ASA
    - Shows `Yes` if ASA is setup otherwise shows `No`.
  - Portfolio
    - Shows `Yes` if Portfolio is setup otherwise shows `No`.
  - Status
    - When Portfolio is Yes, it pulls the currnet portfolio status from `Investment | Workspave` of the household.
    - Shows `-` when no status available or Portfolio is No.
  - IPS
    - When Portfolio is Yes, it pulls the currnet IPS date of the household. (Here, system will always pull the latest current IPS date)
    - For `Draft` IPS, shows `Draft` word in bracket with date.
    - Shows `-` when Portfolio is No.
  - Grouped Entities
    - When Portfolio is Yes, it pulls the grouped entities from the Service scope tab of the household.
    - In case of multiple entities, shows new entity in new line. 
    - Show `-` when no any entity is selected
  - Additional Investments
    - When Portfolio is Yes, it pulls the Additional Investments from the Service scope tab of the household.
    - In case of multiple entities, shows new entity in new line. 
    - Show `-` when no any entity is selected.
- Sorting order: Records are primarily sorted on ascending order of Generation and Secondary sorting on alphabetical order of Name.
- On hover, shows hover effect and vertmore action menu at right side. 
- Vertmore action: `Deceased/Terminate` & `Delete`
  - `Deceased` action is applicable for Individual and `Terminate` action is applicable for Joint.
- On click of row, opens that entity in same page.
- If any family has no household, this section won't be shown in details page.

#### ASA Entities
- It shows only those entities whose `ASA Entity` is true. (Other than Household)
- It shows all entities other than `Individual or Joint`. So under this section, entities are grouped by entity type in order of- Parternships, Foundations, Estates & Trusts
- When family doesn't have any ASA entities, whole `ASA Entities` section won't be shown.
- If any entity type has no records, whole section won't be shown.
- Columns behaviour will be same as [household section](#households). Other changes are:
  - This section won't have 2 columns `Generation` & `Service Scope`.
  - It will have one extra column `Service Team`. It shows the household name which selected as a `Service Team`. If no Service team is selected, shows `-`.
- Sorting order under each entity type group: Records are sorted on alphabetical order of Name. 
- On hover of each records, shows hover effect and vertmore action menu to the right side.
  - Vertmore actions: `Terminate`, `Delete`

#### Individuals
- This section shows only those Individuals whose household is No.
- Shows proper message when no Individuals available.
- Shows `+` button to the right side of the header. On click, it shows 2 options: `Add Individual` & `Add Family Member`
  - When user selects `Add Individual`, opens the add Individual dialog where user can enter new individual.
  - When user selects `Add Family Member`, opens the add Contact dialog where user can enter new family member contact. [See more details](../contact-company/contact-requirements.md#family-member-contact)
- Columns 
  - Name
  - Entity ID
  - Service Team
  - Generation
  - Spouse
  - Children
    - In case of more than one Individual, each individuals are shown in comma separated. 
  - Father
  - Mother
- Sorting order: Records are primarily sorted on ascending order of Generation and Secondary sorting on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action for Individuals: `Deceased` & `Delete`
  - Vertmore action for Family member contact: `Edit`, `Convert to Individual`, `Archive`, `Restore`, `Replace & Delete`, `Delete`. [See more details](../contact-company/contact-requirements.md#family-member-contact)
    - `Edit`, `Archive` & [`Convert to Individual`](../contact-company/contact-requirements.md#convert-to-individual) action is applicable only for Active contact. 
    - `Restore` action is applicable only for Archived contact.

#### Joint
- This section shows only those Joint whose household is No.
- Shows proper message when no Joints available.
- Shows `+` button to the right side of the header. On click, opens the add Joint dialog where User can enter Joint.
- Columns
  - Name
  - Entity ID
  - Service Team
  - Generation
- Sorting order: Joints are primarily sorted on ascending order of Generation and Secondary sorting on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Terminate` & `Delete`

#### Partnership
- It shows all Partnerships whose `ASA Entity` is false.
- Shows proper message when no Partnerships available.
- Shows `+` button to the right side of the header. On click, opens the add Partnership dialog where user can enter partnership.
- Columns name
  - Name
  - Entity ID
  - Service Team
    - Shows household name which is selected as a `Service Team`.
  - Established On
  - Purpose of Partnership
- Sorting order: Partnerships are sorted on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Terminate` & `Delete`

#### Foundations
- It shows all Foundations whose `ASA Entity` is false.
- Shows proper message when no Foundations available.
- Shows `+` button to the right side of the header. On click, opens the add Foundation dialog where user can enter foundation.
- Columns name
  - Name
  - Entity ID
  - Service Team
    - Shows household name which is selected as a `Service Team`.
  - Established On
  - Purpose of Foundation
- Sorting order: Foundations are sorted on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Terminate` & `Delete`

#### Estate
- It shows all Estates whose `ASA Entity` is false.
- Shows proper message when no Estate available.
- Shows `+` button to the right side of the header. On click, opens the add Estate dialog where user can enter estate.
- Columns name
  - Name
  - Entity ID
  - Service Team
    - Shows household name which is selected as a `Service Team`.
  - Established On
  - Deceased
- Sorting order: Estates are sorted on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Terminate` & `Delete`

#### Trusts
- It shows all Trusts whose `ASA Entity` is false.
- Shows proper message when no Trusts available.
- Shows `+` button to the right side of the header. On click, opens the add Trust dialog where user can enter trust.
- Columns name
  - Name
  - Entity ID
  - Service Team
    - Shows household name which is selected as a `Service Team`.
  - Date of Formation
  - Type
  - Details
  - Purpose of Trust
- Sorting order: Trusts are sorted on alphabetical order of Name.
- If any column has no data, shows `-`.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Terminate` & `Delete`


### Deceased tab
- Shows only deceased Individual of the family or Archived family member contact.
- Shows proper message when tab has no records.
- Columns
  - Name
  - Entity ID
  - Generation
  - Deceased Date
- Shows proper message when it has no records.
- On hover, shows hover effect and vertmore action to the right side.
  - Vertmore action of Individual: `Undo Deceased` & `Delete`
  - Vertmore action of family member contact: `Restore`, `Replace & Delete`, `Delete`
    - `Replace & Delete` & `Delete` action behavior is same as normal contact.
- Sorting order will be same as [current tab](#individuals). 

    
### Terminated tab
- Shows all terminated entities of the family.
- Shows proper message when tab has no records.
- Entities are shown in grouped by entity type in order- Joint, Partnerships, Foundations, Estates & Trusts
- If any entity type has no records available, whole section won't be shown. 
- Columns for Joint
  - Name
  - Entity ID
  - Generation
  - Terminated Date
- Columns for other entities
  - Name
  - Entity ID
  - Termination Date
  - Terminated Notes
    - Applicable only when Trust section.
    - If notes is too long, shows it in multi line.
- On hover, shows hover effect and vertmore action to the right side.
  - Vertmore action: `Undo Deceased` & `Delete`
- Sorting order of [Joint](#joint) and [Other entities](#partnership) will be same as Current tab.
- See [deceased-terminated-delete-legal-entity](../legal-entities/deceased-terminated-legal-entity) for more details on Delete, Decease and Terminate action.


### Family Navigator
- Shows family navigator diagram of this family. [See more details](../legal-entities/family-navigator.md#family-navigator)


## UI Rule
- Placeholder message for Current tab
  - Individual: `No Individuals Available`
  - Joint: `No Joint Available`
  - Partnership: `No Partnerships Available`
  - Foundation: `No Foundations Available`
  - Estate: `No Estate Available`
  - Trust: `No Trust Available`
- Placeholder message for Deceased/Terminated tab: `No Records Found`.
- Mockups
  - Family details page: [See when no household available](https://drive.google.com/file/d/1dWXH7jl98KZXDCa-WKBALo603uaAzcCq/view?usp=sharing)  & [When all details are available](https://drive.google.com/file/d/10b8t6sMo905rjWv4p41nuTwiaG5sftW2/view?usp=sharing)
  - [Family deceased tab](https://drive.google.com/file/d/1je-RyyuJVufZ4vGA9qn_46WwfcmRYjem/view?usp=sharing)
  - [Family terminated tab](https://drive.google.com/file/d/1PhslfmNB2w0epCxnwHn0ks4IVLO1byF6/view?usp=sharing)
