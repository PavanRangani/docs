# Individual
- There are two type of Individuals: `Normal Individual` & `Family Member`.


## Generation
### Overview
- A concept of Generations is introduced to show hierarchy of Households within a Family.
- Industry practice is to identify different levels/members of a family using a “Gn” notation, with G1 referring to the Individual/Joint that first established a relationship with Clarius.
  - For example, in the Davis family the G1 generation would be Phil & Cathy Davis.  If the G1 Individual were to bring in their parents as clients, then Clarius would identify them as G0 -- Helen Stusser would be G0.
  -	If a grandparent is added, they would still be considered a G0, not a G “-1”.
- Generations is just a label: membership in a particular generation will not determine the services offered to a family member -- that will be determined solely by the Service Scope offered to that person’s Household.

### System rules
- It is mandatory for Individuals.
- Once the Joint is created, user can't change the Individual's generation.
- Individual is added as a `Family member` to another Individual, system won't allow to change that individual's generation.

### UX Rule
- It is a dropdown of `G1 to G6`. 
- Applicable only for Individual and Additional Family Member.
- In future, if user wants to add more generation then we can do that from the front end code base.
  - Notes: This should be a configurable variable in the frontend code base. So then in future, we want to extend this dropdown to G10, we just need to update this variable and it will show options form G1 to G10 without any codechange.
- When individual is added to any Joint or any other Individual's family member, shows Generation field as disabled. On hover, shows tooltip message.

### UI Rules
- Tooltip message: `Joint is already exists or It is used as a "Family Member" for another individual. So you can't change it`. [See this](https://drive.google.com/file/d/1I1QnV0T_28E_6KCh1AsLvjSJyIAM7xJf/view?usp=sharing)
- Mocks of [add Individual](https://drive.google.com/file/d/1xYWf1G8TxI_BQfWRQpt8NIgZ547UriKe/view?usp=sharing) dialog and [edit Individual](https://drive.google.com/file/d/1NiKAPAprepvIavBJm3-Oi95Sh3FtXvff/view?usp=sharing) dialog


## Current relationship Status
### Overview
- There are total 4 status. Statuses are `Single`, `Married`, `Cohabitating`, `Separated`
  - Cohabitating means two individuals living together without being married 
  - Separated measns two individuals are married but they are not living together and they are not divorced yet.

### Entity details
- Current Relationship Status of Individual.
  - It is a mandatory field. Its values are: `Single`, `Married`, `Cohabitating`, `Separated`.
  - Default value is set to `Single`.
- Spouse Name
  - It is mandatory when `Married` or `Separated` status is selected.
  - It is an auto-complete dropdown of same family Individuals and Contact whose Generation is same as Individual generation. (Self Entity won’t be shown).
- Marriage Date
  - It is mandatory when `Married` or `Separated` status is selected.
  - It is a date input field.
- Partner
  - It is mandatory when `Cohabitating` status is selected.
  - It is an auto-complete dropdown of same family Individuals and Contact whose Generation is same as Individual generation. (Self Entity won’t be shown).

### UI Rule
- [See flow](https://drive.google.com/drive/u/0/folders/1-qWk-0JXWj8baOu4KOxglnNtwg_RugBn)


## Divorced
### System Rule
- User can enter a divorce data for Individual.
- Allows to enter multiple records (Individuals may have multiple divorce in past)

### UX Rule
- Divorce data needs to be entered in rare case. So its hidden by default. On click of button, provides a way to enter divorce data.
- It is multi input field. Shows `+` button to the right side of header. On click, add one divorce records with X button.
- When user add new divorce date, it will asks two information `Ex-Spouse` & `Divorce Date`. Both are mandatory field.
  - Ex-Spouse: It is an auto-complete dropdown of same family Individuals and Contact whose Generation is same as Individual generation. (Self Entity won’t be shown).
  - Divorce Date: It is date input field. 
- Same individuals can't be added for multitime. System shows error message for this.

### UI Rule
[Mocks](https://drive.google.com/file/d/11YOGg7LctELxVEqN26itUayA2SzXy-K9/view?usp=sharing)
- Error message: `Duplicate value is not allowed`. 


## Add Individual / Family Member

### System Rules

- Doesn't allow to create same name individual

### UX Rules

- Its same as [contact](../contact-company/contact-requirements.md) page. 

- Individual have one field [`Display Name`](./display-name.md#system-rule) instead of `Nickname`. 

- Individuals have more fields than contacts. That field are: 

  - Contact Information

    - Birth date - Date of Birth
    - Other Phone - Phone number input field.
    - Other phone extension - Free form text input field
    - Generation - [See more details](#generation)
      

    #### Address Related field

    - Both Additional address - It same as Address field. 

  - Identification
    - `Driving Licence No` - Free form text input field
    - `Issue Date` - Date input field
    - `State of Issuance` - Auto complete dropdown of State
    - `Expiration Date` - Date input field
    - `Passport No` - Free form text input field
    - `Issue Date` - Date input field
    - `Country of Issuance` - Auto complete dropdown of Country
    - `Expiration Date` - Date input field

  - Family
    - `Current Relationship Status`- [See more details](#current-relationship-status) 
    - `Parent`
      - For `Father` and `Mother`, It is an auto-complete dropdown of same family Individuals and Contact whose Generation is one level lower than Individual's generation. (Self Entity won’t be shown)
        - For e.g. Tom and Judy have generation `G1` and Carson have generation `G2` and `Alicia` have generation `G2`. So when user add details of `Father` or `Mother` for Carson, dropdown shows only `Tom` and `Judy`. Not `Alicia`.

      - For `Child`, It is an auto-complete dropdown of same family Individuals and Contact whose Generation is one level greater than Individual's generation. (Self Entity won’t be shown)
        - For e.g. Tom and Judy have generation `G1` and Alicia have generation `G2` and Abigail have generation `G3`. So when user add detail of `Child` for Alicia, dropdown show only `Abigail`. Not `Tom` and `Judy`.
    - Divorced - [See more details](#divorced)

  - Other Information
    - `Preferences` - Multiline text input field

### UI Rules

- When user enter same name which is available in the existing records then shows message `Contact with same name already exists`.


## Edit Individual / Family Member

### System Rule
- User can edit anytime. 

### UX Rule
- There is a separate edit dialog for each section.
- `Entity Details` can't be changed once the Joint is exists. For this, shows pencil icon disable. On hover of disabled icon, shows tooltip message.

### UI Rule
- Tooltip message: `This Individual is associated with Joint. So you can't change Household details from here. You can change it at Joint level only.` [See this](https://drive.google.com/file/d/11LgjAFXjUsXe5_GunMv_9j0tk9CjZPvg/view?usp=sharing) 


### Address
- Can enter more than 4 addresses
- Shows `+` button to the right side of header. On click of `+`, system adds 2 addresses at bottom.
- User can enters only 8 addresses in an Individual. 
- When user enters 8 addresses, `+` button is shown disabled. On hover, shows tooltip message.
  - Tooltip message: `You have reached the maximum limit of 8 addresses. So you won't be able to add a new address`.
- When user wants to delete address added by user and hover of addresses section, shows `x`button. 
  - On hover of `X`, shows hover effects and on click, removes the whole sections.
- Shows `Select Address` as link with each address. [See more details]()



## Delete Individual / Family Member

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)

## Deceased / Family Member

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)

## Undo Deceased / Family Member 

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)


## Convert to Individual
### Overview
- Sometimes in future, user need to mark `Family member` as an Individual.

### System Rule
- This action can't be reversed. So once a `Family Member` contact becomes an Individual, it can’t be changed to `Family Member` contact again.
- Only active family member contact will be converted to Individual.

### UX Rule
- Applicable only for Family Member individual.
- When user clicks on the `Convert to Individual` action, system show confirmation dialog.
- On confirmation, system will convert that contact to Individual of that family.
- If a user needs to add more details for that individual, the user can open that individual and edit it and fill the details.


### Entity Details of Normal Individual

### UX Rule
- Show Joint name here if individuals is added in Joint.
- Entity Details shows `Associated Joints`, `Entity ID`, `Household` & `Service Team`.
- `Entity Details` can't be changed once the Joint is exists. For this, shows pencil icon disable. On hover of disabled icon, shows tooltip message.
- This is not applicable for the Family Member.

### UI Rule
- Tooltip message: `This Individual is associated with Joint. So you can't change Household details from here. You can change it at Joint level only.` [See this](https://drive.google.com/file/d/11LgjAFXjUsXe5_GunMv_9j0tk9CjZPvg/view?usp=sharing) 


### Family Member

#### Overview
- Sometimes it is possible that Family member is not added as Individual in Family. See Mary Alberg case. She is ex-spouse of Tom and mother of Robert, Katherine, John. But in Athena, she is not added as an Individual in the Alberg Family. She is added as a family member. System needs to track Generation for such contacts. So user creates a family member individual.

### UX Rule
- This is a same as a Individual. Other diffrences are:
  - Such tabs are not applicable for the Family Member individual. like, `Communication`, `Task`, `Assets`, `Banking`, `Insurances`, `Estate Plan`, `Investments`, `Cash Flow`, `Philanthropy`, `Tax` & not other subtabs of the Contact page.
  - Such tabs are applicable for the Family Member individual. like, `Contact > General`, `Contact > Family Navigator`, `Gifting`, `Partnerships` & `Trusts`.








