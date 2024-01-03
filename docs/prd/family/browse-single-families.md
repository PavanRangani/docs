# Browse Single Family details

## Family Narrative
### UX Rule
- Instead of showing all the narrative, shows narrative in two lines only. Shows `View more` link to expand full narrative.
- User can able to edit family narrative. [See more details](./families.md#family-narrative)
- If the narrative box has a height greater than the default height (2 line), a `View Less` button will appear on the bottom right of the box.
  - When the user clicks on the `View Less` button, the system will show the `View More` button.
- Family Narrative is shown for all tabs.

## Original ASA Signed
### UX Rule
- System will automatically set the ASA execution date of the first entity of a family at the family level. 
  - For e.g. Athena has one family `Alberg` where `Tom` & `Judy` are an Individual. Tom is the first household of the family. Now, the user adds ASA details for `Tom` and adds `4/1/1999` in the Execution date. So the system will set that date at the family level.
- Once the date is auto set at family level, it won't be changed/removed in any cases. like
  - When users Amend/Change the ASA Details or Deceased/Terminated entity or change the Household/Service team, the system won't change the Original ASA Signed date.

### UI Rule
- [See mocks](https://drive.google.com/file/d/1mgeTefQ-O5pzg7_JNRaDgk-EoPVxskS6/view?usp=sharing


## Tax Component Lead

#### System Rule
- Each family will have one Clarius user associated as a Tax component lead. Only CA users can be associated as a Tax component lead.
- This is just an informative field so that Clarius team can know who is the responsible person for the Tax component of this tax return. There isn’t any logic in application which depends on this field. 
- When Tax component lead is set at the family level, all the open tax returns will have this user set. Existing tax returns of that family which is filed will not have any Tax component lead associated
- When the Tax component user is changed, open tax returns will be updated but filed tax returns will not be updated. 
- When the tax component user is removed, open tax returns will be updated but filed tax returns will not be updated. 
- When any Clarius user’s CA role is removed, the existing family’s tax component field will not have any effect. System will just show one warning.

#### UX Rule
- In the family details page, shows one field `Tax Component Lead` user. It is a alphabetical dropodwn of the active `CA` users. (CA user means those users who has `Client Associate` checkbox  ON)
- It has one pencil icon. On click, opens the tax component edit dialog. When user changes the Tax Component, the system will show one warning message.
- This pencil icon won’t be shown for the archived family. 

#### UI Rule
- Warning message: `As you changed the Tax Component Lead, open tax return will be updated but the filed tax return won't be updated`
- [See flow](https://drive.google.com/drive/u/0/folders/1tdFxPMko1QVIN57HdDx34PVVAPVw6kH3)



## System Rule
- There is total 6 types of legal entity available : `Individuals`, `Joint`, `Partnership`, `Foundation`, `Estate`, `Trust`.
- User can add/edit/delete legal entity of that family.
- New legal entities can't be created for an archived family.
- Current and Deceased legal entity are shown different tab.
- On Click of any records, opens that legal entity.

## UX Rule
- Family is shown in 3 groups: `Household`, `ASA Entity` & `Legal Entities`
  - Housheold - it shows Individual or Joint whose Household is Yes
  - ASA Entity - it shows legal entities whose ASA Entity is Yes
  - Legal Entity - It shows all legal entities whose Household or ASA Entity is No. Each entity type is shown in separate table.
- Shows `Archived` tag for the archived family.
- Legal entities are shown in three tabs: `Current` or `Archived` & `Deceased` & `Terminated`
  - When family is Archived, tab name will be changed from `Current` to `Archived`.
  - `Deceased` tab will show deceased Individual and `Terminated` tab will show all terminated entity.
- Shows `Archived` tag in header for the archive tab. 


### Current tab
- It shows `Households`, `ASA Entities`, `Individuals`, `Joints`, `Partnerships`, `Foundations`, `Estates` & `Trusts`.

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
  - Grouped Entities (Temporarily this field is not shown)
    - When Portfolio is Yes, it pulls the grouped entities from the Service scope tab of the household.
    - In case of multiple entities, shows new entity in new line. 
    - Show `-` when no any entity is selected
  - Additional Investments (Temporarily this field is not shown)
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
- Shows `+` button to the right side of the header. On click, opens the add individual dialog where user can enter new individual.
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

#### Additional Family Member
- This section shows only Additional Family member contacts of the family.
- Shows proper message when no Contacts available.
- Shows `+` button to the right side of the header.
- When user clicks on `+` button, opens the add Contact dialog where user can enter new family member contact. [See more details](../contact-company/contact-requirements.md#family-member-contact)
- Columns
  - Name
  - Generation
- Sorting order: Records are primarily sorted on ascending order of Generation and Secondary sorting on alphabetical order of Name.
- On hover, shows hover effect and vertmore action menu to right side.
  - Vertmore action: `Edit`, `Convert to Individual`, `Archive`, `Restore`, `Replace & Delete`, `Delete`. [See more details](../contact-company/contact-requirements.md#family-member-contact)
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
- Shows only deceased Individual or Deceased Household of the family or Archived family member contact.
- Shows proper message when tab has no records.
- `Household` section
  - This section appears only when it has records.
  - Columns are same as [Current tab](#households).
    - It has one column `Deceased On` after `Generation`
  - On hover of Household deceased Individuals, shows vertmore action. 
  - Vertmore action are: `Undo Deceased` or `Delete`
- `Individual` section 
  - Columns are
    - Name
    - Entity ID
    - Generation
    - Deceased Date
      - It shows date when Individual is mark as deceased.
  - On hover of deceased Individuals, shows hover effect and vertmore action to the right side.
    - Vertmore action of Individual: `Undo Deceased` & `Delete`
  - Shows proper message when it has no records.
- `Additioanl Family Member` section
  - This section appears only when it has records.
  - Columns are same as [current](#additional-family-member).
  - Vertmore action of family member contact: `Restore`, `Replace & Delete`, `Delete`
    - `Replace & Delete` & `Delete` action behavior is same as normal contact.
- Sorting orders of each section will be same as [current tab](#individuals). 

    
### Terminated tab
- Shows all terminated entities or Joint Household terminated entities of the family.
- Shows proper message when tab has no records.
- Shows `Household` section at top. It shows Joint termianted household entities.
  - Columns are same as [current tab](#households). 
  - It has one column `Termination Date` after `Generation`.
  - This section appears only when it has records.
  - On hover, shows hover effects and vertmore action menu at right side. Vertmore action are: `Undo Terminate` & `Delete`.
- Entities are shown in grouped by entity type in order- Joint, Partnerships, Foundations, Estates & Trusts
- If any entity type has no records available, whole section won't be shown. 
- Columns for all entities
  - Name
  - Entity ID
  - Generation
    - Applicable only for Joint entity
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


## Tax Component Lead

### Edit Tax Component Lead

#### UX Rule
- It is a dropdown of the user whose `Client Associate` checkbox is true.
- When user is removed from the Client Associate, system will not removed that user from the family's Tax Component
- When the Tax component user is changed, only open tax returns will be updated with the new user. Already filed tax returns will not be updated. For this, system shows warning message.

#### UI Rule
- Warning message: `As you changed the Tax Component Lead, open tax return will be updated but the filed tax return won't be updated`

### Browse in family details page

#### UX rule
- It is a dropdown of the user whose `Client Associate` checkbox is true.
- Shows pencil icon always from where user can change the Tax Component Lead.
- When Tax component lead is set at the family level, all the open tax returns of the family will have this user set. Existing tax returns of that family which is filed will not have any Tax component lead associated.

