# Individual



## Add Individual

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

    - `Spouse` - Auto complete dropdown of active contact.
    - `Married ` - Date Input field.
    - `Father`, `Mother`,`Guardian` , `Child`  & `Other` - Auto complete dropdown of active contact.

  - Other Information
    
    - `Preferences` - Multiline text input field

### UI Rules

- When user enter same name which is available in the existing records then shows message `Contact with same name already exists`.



## Edit Individual

- User can edit anytime. 
- There is a separate edit dialog for each section.

### Address
- Can enter more than 4 addresses
- Shows `+` button to the right side of header. On click of `+`, system adds 2 addresses at bottom.
- User can enters only 8 addresses in an Individual. 
- When user enters 8 addresses, `+` button is shown disabled. On hover, shows tooltip message.
  - Tooltip message: `You have reached the maximum limit of 8 addresses. So you won't be able to add a new address`.
- When user wants to delete address added by user and hover of addresses section, shows `x`button. 
  - On hover of `X`, shows hover effects and on click, removes the whole sections.
- Shows `Select Address` as link with each address. [See more details]()



## Delete Individual

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)

## Deceased 

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)

## Undo Deceased 

[See this](../legal-entities/deceased-terminated-legal-entity.md#individual)


## View Individuals

### UX Rule

- Show Joint name here if individuals is added in Joint.
- If the individual have `Display Name`, show that name in bracket with the header of legal name. 

### UI Rule

[Mockup of without display name](https://drive.google.com/file/d/1uBjZ1CoajLcMzPbp86uzStMiHirvZIS0/view?usp=sharing) 

Mockup with Display name //TODO

