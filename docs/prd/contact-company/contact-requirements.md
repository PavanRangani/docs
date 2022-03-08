# Contacts

- `Contact` represents a real-world Contact/Person.
- It's used to track information about the contacts to which Athena Clients deal. e.g. If someone is authorized signer for the Bank Account of one of the Legal entity, then that needs to be exist as Contact in the System. And then it could be referenced as "Authorized Signer" for that Bank account. It was just one example, there are many other places where the Contacts are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Legal entity Individual is also considered as special type of contact
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.

See [Contacts URLs here](../webapp/application-url-navigation.md#contacts)



## Entity Info

#### General Information

- `First Name`, `Middle Name`, `Last Name`, `Nickname`, `Suffix`, `Title`, `Designation`

  - Free form text input field.
  - `First Name` is a mandatory field.

  ##### Validation rules

  - System manages uniqueness validation per following combination:
    - First Name, Middle Name, Last Name, Suffix.
    - For e.g. Two contact whose First Name and Middle Name is given and both are same, then it is not valid.
    - For e.g. Two contact whose First Name and Middle Name is given and both are same but Last Name is different, then it is valid.

- Company

  - Company auto complete dropdown. It will shows all types company and client entities expect DAF types foundation.
  - When a user types a new name in the Organization group which is not available in dropdown, the system will create a new company of type `Other`.

#### Contact Information

- `Mobile Phone`, `Work Phone`, `Work Phone Extension`, `Home Phone`
  - Number input field. Prefix `+ 1` will always appear.
  - Allows only 10 digits otherwise shows error `Invalid Format`.

- `Email`
  - For `Clarius User`, It won't be editable. shows `Clarius User` tag for that.
- `Alternate Email` - Email input field. If its not valid then shows error `Invalid Email`.
- Fax - Number input field.

##### Address related field

Contact has 2 types of address. `Work Address`, `Home Address`.

User can change caption for predefined addresses. e.g Home Address > Malibu Home Address

- `Address 1`, `Address 2` - Free form Text input field.
- `City` - Auto complete dropdown of City. When user enter a new name, system will create a new city name.
- `State` - Auto complete dropdown of State. Enable only for `USA` and `Canada` country. Disable for other country.
- `Zip Code`
  - Number input field
  - If zip code is not valid shows error `Invalid Format`.
- `Country` - Auto complete dropdown of country. Default `USA` selected.

#### Other Information

- Notes - Free text input field.

#### Mailing List

checkbox of mailing list

Regular contacts (Non individual) won't have following fields. Individual contact will have those fields.

- Birth date
- Other phone
- Other phone extension
- Both additional address
- Preferences

## Add Contact

### UX Rule 

- Doesn't allow to create same name company.

### UI Rule

- Error message when same name contact already exits: `Contact with same name already exists`
- Error message when same name contact already exits in the archived: `Archived Contact with same name already exists`



## Edit contact

- Only allowed for `Contact` and `Clarius Users`
- For contact of Deceased individual edit is allowed. But Mailing List edit is not allowed.

## Delete Contact

- User cannot delete `Individual` type contact
- But when individual is deleted, system deletes it as Individual always. But for corresponding contact there are two cases.
  - Case 1: If Individual is being referenced at other places in application, system keeps related Contact as it is
  - Case 2: If Individual is not being referenced anywhere then corresponding Contact is also deleted by system.
- If Contact is referenced to any other places, delete is not possible. it shows all its relations and User is offered 2 choices: `Archive` and `Replace and Delete`.
  - In some cases even if contact is referenced, it can be deleted. For e.g. Mailing list. If contact is involved under any mailing list and when contact is deleted it won't be restricted. On delete of contact, that contact will be removed from mailing list.

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
  - Column : `Name`, `Company`, `Work Phone`, `Home Phone`, `Email`.
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

### UI Requirement

Mockup
