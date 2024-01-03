# Contacts

- `Contact` represents a real-world Contact/Person.
- It's used to track information about the contacts to which Athena Clients deal. e.g. If someone is authorized signer for the Bank Account of one of the Legal entity, then that needs to be exist as Contact in the System. And then it could be referenced as "Authorized Signer" for that Bank account. It was just one example, there are many other places where the Contacts are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Legal entity Individual is also considered as special type of contact
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.

See [Contacts URLs here](../webapp/application-url-navigation.md#contacts)



## Entity Info

#### General Information

- `First Name`, `Middle Name`, `Last Name`, `Nickname`, `Suffix`, `Title`, `Designation`, `Department`
  - Free form text input field.
  - `First Name` is a mandatory field.
- `Company Profile` 
  - This field represents URL of the page which links to this contact's profile on the selected company's website
  - If a company is selected for the contact, the field label will be changed to `{Company Name} Profile`. For e.g. `IR&M Profile`
  - It is URL input field.
- `LinkedIn Profile`
  - This field represents LinkedIn Profile URL of this Contact. It is URL input field.
  - It is URL input field.

  ##### Validation rules

  - System manages uniqueness validation per following combination:
    - First Name, Middle Name, Last Name, Suffix.
    - For e.g. Two contact whose First Name and Middle Name is given and both are same, then it is not valid.
    - For e.g. Two contact whose First Name and Middle Name is given and both are same but Last Name is different, then it is valid.

- Company

  - Company auto complete dropdown. It will shows all types company and client entities expect DAF types foundation.
  - When a user types a new name in the Organization group which is not available in dropdown, the system will create a new company of type `Other`.

#### Contact Information

- `Mobile Phone`, `Work Phone`, `Work Phone Extension`
  - Number input field. Prefix `+ 1` will always appear.
  - Allows only 10 digits otherwise shows error `Invalid Format`.

- `Email`
  - For `Clarius User`, It won't be editable. shows `Clarius User` tag for that.
- `Alternate Email` - Email input field. If its not valid then shows error `Invalid Email`.

##### Address

- Contact has one `Work Address`.
- User can change caption for predefined addresses. e.g Work Address > Malibu Work Address.
- When any contact has company address selected, system can't change its caption. It is pulled from the company.
- For Freelancer or consultant type of contacts, contact may not have any company. So in that case system allows to input address instead of only selection.
  - If contact has company, the system will not allow to input address. User needs to always select an address from the company's address.
  - If the contact doesn’t have a company, then only the user can input the address. Though it's not mandatory to input.
- `Address 1`, `Address 2` - Free form Text input field.
- `City` - Auto complete dropdown of City. When user enter a new name, system will create a new city name.
- `State` - Auto complete dropdown of State. Enable only for `USA` and `Canada` country. Disable for other country.
- `Zip Code`
  - Number input field
  - If zip code is not valid shows error `Invalid Format`.
- `Country` - Auto complete dropdown of country. Default `USA` selected.
- `Select {Company name} Address`
  - This dropdown fields is applicable only when Company is selected for the contact.
  - It shows all current address of the selected company.
  - Addresses are alphabetical sorted on the address.
  - Shows address details in the secondary information.

#### Other Information

- Notes - Free text input field.

#### Mailing List

checkbox of mailing list. Regular contacts (Non individual) won't have this checkbox. Individual contact will have this checkbox.

Regular contacts (Non individual) won't have following fields. Individual contact will have those fields.

- Birth date
- Other phone
- Other phone extension
- Both additional address
- Preferences

## Add Contact

### UX Rule 

- Doesn't allow to create same name contact.
- In `Company Profile`, If URL is not valid, shows the proper error message.
- Addresses fields are disabled when user selects the Company.
- When the user selects an address from the `Select {Company name} Address` dropdown, the system prefills the address in the Contact work address fields.
- When a user enters a new name in the company field or selected company doesn’t have an address, the `Select {Company name} Address` shows a proper message.
- When a user changes the Company, system removes the address from the `Select {Company name} Address` dropdown. For this, system shows proper warning message.
- When a user removes the Company, system removes the `Select {Company name} Address` dropdown and addresses fields are enabledd. For this, system shows proper warning message.

### UI Rule
[Add Contact dialog](https://drive.google.com/file/d/1IiTkjQ1-RTpziu1rE3hsye4xAz_JE-nz/view?usp=drive_link)
- [Flow of address](https://drive.google.com/drive/u/0/folders/1reZs2TqBwluVcnbdpfFSIcCLYOsCZ_g4)
- Error message when same name contact already exits: `Contact with same name already exists`
- Error message when same name contact already exits in the archived: `Archived Contact with same name already exists`
- Error message for Invalid URL: `Invalid URL!`
- Placeholder text when company has no address: `No Address available for the {Company name} Company` [See this](https://drive.google.com/file/d/1KWQd6RSo2LKqrd33-BTKLSGS63wYhuk_/view?usp=drive_link)
- Warning message when user changes the company: `As you have changed the Company, address is removed and you can select new address` [See this](https://drive.google.com/file/d/1_5Z3x0cBGV2ymDQev6Io0auxIxFHsIxE/view?usp=drive_link)
- Warning message when user deletes the company: `As you have removed the Company, the address is removed and you can add a new address` [See this](https://drive.google.com/file/d/17LV-19P2LFIwNNl85tVWEBQQscHtwfwD/view?usp=drive_link)


## Edit contact

- Only allowed for `Contact` and `Clarius Users`
- For contact of Deceased individual edit is allowed. But Mailing List edit is not allowed.

## Delete Contact

- User cannot delete `Individual` type contact
- But when individual is deleted, system deletes it as Individual always. But for corresponding contact there are two cases.
  - Case 1: If Individual is being referenced at other places in application, system keeps related Contact as it is
  - Case 2: If Individual is not being referenced anywhere then corresponding Contact is also deleted by system.
- If Contact is referenced to any other places, delete is not possible. it shows all its relations and User is offered 2 choices: `Archive` and `Replace and Delete`.
  - In some cases even if contact is referenced, it can be deleted. For e.g. Tax. If contact is involved under any Tax return and when contact is deleted it won't be restricted. On delete of contact, that contact will be removed from tax return.

### UI Requirement

[View Mocks](https://drive.google.com/drive/u/0/folders/15J3-UluJWOc8oYH034NLe-UCr-zNUZtM)

- If the Contact isn't referenced anywhere, can be deleted with simple delete-confirmation.
- Otherwise, it shows all its relation where its linked and user has to choose one of the option: `REPLACE` or `ARCHIVE`.
- Contact can be linked at legal entities or underlying data of legal entities
  - Legal entities
    - Individual
    - Joint
    - Foundation
    - Partnership
    - Estate
    - Trust
    - Partners tab of all legal entities
  - Underlying records of legal entity
    - Communication
    - Banking
    - Gifting
    - Insurance
    - Tax return
    - Tax component
- Relations of all legal entities are shown in one group `Legal entities`
- Relations of underlying data are shown in separate group with its name.
  - For Communication, Banking, Gifting and Insurance shows its name
  - For tax return shows Year, form and legal entity name for e.g. `2020 (1040 - John Brown)`
  - For Tax component shows name of the Tax component

### Multiple Delete

When one of the selected contact is referenced anywhere, then we simply deny the action. User need to manually delete individual contacts.

## Replace and Delete Contact

- On "Replace and Delete", all the references where the current contact is referenced will be updated with the new contact and then this Contact is deleted.
- "Replace and Delete" isn't available when deleting multiple contacts together. (It's decided just to avoid unnecessary UI complexity)

### UI Requirement

[Mockup](https://drive.google.com/drive/u/0/folders/15J3-UluJWOc8oYH034NLe-UCr-zNUZtM)

- User need to choose one of the existing contact & then Replace.
- `Replace` button is disabled when Contact isn't yet selected.
- Drop-down doesn't offer the Contact which is being replaced.

## Archive Contact

- Archived contacts aren't available in the auto-complete. So, the contacts which aren't used anymore but referenced in the older records, could be archived to avoid accidental usage of such contacts.
- `Individual` type contacts can't be archived. But when any individual is marked as deceased, Corresponding contact will be archived auto.

### UI Requirement

Following applies to both: Action from the `item-context` menu (Single) or multiple selection:

- On click action is performed, immediately. No extra confirmation is needed.
- On Archive, shows toast "Archived successfully".

## Restore Contact

- Archived contact can be restored anytime without any restriction. Once restored, it will become `active` and will be available in the auto-complete to reference it at other places.
- Restore action for deceased individual will be disabled.

### UI Requirement

Following applies to both: Action from the `item-context` menu (Single) or multiple selection:

- On click action is performed, immediately. No extra confirmation is needed.
- On Restore, shows toast "Archived successfully" or "Restored successfully".

## Browse Contacts

- Show records in 4 tabs: CLIENTS, CONTACTS, CLARIUS USERS, ARCHIVED
- Shows Number of records with each tab.

### UI Requirement

- By default `CLIENTS` tab is visible.

- All tabs are always visible, regardless of available contact under it.

- When there isn't any record under any tab, shows `No records found` message.

- CLIENTS

  [Mockup](https://drive.google.com/file/d/1KF1KyzCcQK76IMqAunyAZaSTrDwuXrEx/view?usp=sharing)

  - Shows only current family legal entities.
  - Shows contact of Individuals. Shows records group by family.
  - Column : `Name`, `Company`, `Work Phone`, `Mobile Phone`, `Home Phone`, `Email`.
  - Under each family shows records in ascending order of Name.
  - With each record shows icon for contact.
  - Context-menu action not available
  - Multi selection is not available in this page
  
- CONTACTS

  [Mockup](https://drive.google.com/file/d/1jybV7GGG7iG-tdC9MdD8wYNxR1tn9sHp/view?usp=sharing)

  - Show all Normal Contacts.
  - Records are sorted in Alphabetical order.
  - Column : `Name`, `Company`, `Work Phone`, `Email`.
  - context-menu actions for Normal Contact
    - Edit
    - Archived
    - Replace and Delete
    - Delete
  - Multi selection is available.

- ARCHIVED

  [Mockup](https://drive.google.com/file/d/1lu9k8AjRiCxverGWcy2LaOHjQI5UNwZl/view?usp=sharing)

  - Shows all type of contact: Normal contact, Clients and Clarius Users
  - Sorting: By Name in ascending order.
  - Columns: `Individual Icon`, `Name`, `Company`, `Work Phone`, `Mobile Phone` `Home Phone`, `Email`.
  - Shows icon only for contacts of Individuals
  - Context-menu actions for Normal Contacts (Not an Individuals or Clarius Users):
    - Restore
    - Replace and Delete
    - Delete
  - Context-menu actions for Clarius User:
    - Restore
  - Context-menu action not available for Individuals.
    - Multi selection is available
    - When Individuals are selected in multi select mode, Multi select actions will be disable and it will show tooltip “You need to remove Individual from the selection in order to perform this action”
  - Shows `-` in column which doesn't have value
  - On mouse hover of record shows hover effect
  - On click of any record
    - For Normal contact, opens view dialog
    - For Individual, opens workspace page

## View Normal Contact (Not Individual)

- User can view Contact by clicking on contact row
- View is presented in Dialog
- Shows `-` for fields which doesn't have value.
- `Department` - If the name is too long, shows the name in ellipsis.
- `{Company Name} Profile or Company Profile` or `LinkedIn Profile` 
  - Both are links. On clicks, open that link in the new page.
  - If the link is too long, the link shows in ellipsis.
- `Work Address`
  - If user selects Company address, company address name is shown in the label with proper format. For e.g. `Work Address (Address of IR&M Company)`

### UI Requirement

[Mockup](https://drive.google.com/file/d/1L8botZ3JRfwGhGBBwUayc9ha4JrJEzbn/view?usp=drive_link)



## Family Member contact
### Overview
- Sometimes it is possible that Family member is not added as Individual in Family. See Mary Alberg. She is ex-spouse of Tom and mother of Robert, Katherine, John. But in Athena, she is not added as an Individual in the Alberg Family. She is added as a normal contact. System needs to track Generation for such contacts. This field is not useful for most of the contacts. It's useful only for the Contact created to track any family member.

### Add Family Member Contact

#### UX Rule
- Add dialog is same as [Contact add dialog](../contact-company/contact-requirements.md#add-contact). Other diffreces are
  - It has 3 fields for family member
    - Family Member
      - It is field view and its always `Yes`
    - Family
      - It shows the family name where this contact is added.
    - Generation
      - It is mandatory field and dropdown of Generation.
  - It doesn't have `Company Profile` & `LinkedIn Profile` field and it doesn't have logic of `Work Address`.

#### UI Rule
- See [dialog](https://drive.google.com/file/d/1JDrttm1uTc4VFfTuT4RF4NmOPKBpFGVA/view?usp=sharing)


### Edit Family Member contact
#### System Rule
- Only active family member contact can be editable.
- Generation won't be changed when it is used in any Individual's family details.
- When any family member contact is used in family details of Individual, system won't allows to delete that contact. 

#### UX Rule
- Shows Generation field disabled. On hover, shows tooltip message.
- When contact is linked to any Individual, system shows `Replace & Delete` dialog.

#### UI rule
- Message: `This family member contact has been added to the Individual's family details. So you can't change it.`


### Convert to Individual
#### Overview
- Sometimes in future, user need to mark `Family member contact` as an Individual.

#### System Rule
- This action can't be reversed. So once a `Family Member` contact becomes an Individual, it can’t be changed to `Family Member` contact again.
- Only active family member contact will be converted to Individual.

#### UX Rule
- When user clicks on the `Convert to Individual` action, system show confirmation dialog. 
- On confirmation, system will convert that contact to Individual of that family.
- If a user needs to add more details for that individual, the user can open that individual and edit it and fill the details.