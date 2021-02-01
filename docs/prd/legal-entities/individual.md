# Individual



## Add Individual

### System Rules

- Doesn't allow to create same name individual

### UX Rules

- Its same as [contact](../contacts/requirements.md#individual) page. Individuals have more fields than contacts. That field are: 

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



## Delete Individual

[See this](./delete-legal-entity#individual)

## Deceased 

[See this](./deceased-terminate-delete#deceased)

## Undo Deceased 

[See this](./deceased-terminate-delete#undo-deceased)

## View Individuals

### UX Rule

- Show Joint name here if individuals is added in Joint.

### UI Rule

Mockup //TODO