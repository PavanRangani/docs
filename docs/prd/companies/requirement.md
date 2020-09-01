# Companies

- `Companies` represents a real-world Company
- It's used to track information about the company to which Athena Clients deal. e.g. If someone has  Bank Account in bank then that bank needs to be exist as company in the System. It was just one example, there are many other places where the company are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.

See [Companies URLs here](../webapp/application-url-navigation.md#companies)


## Entity Info

#### Name

- Only `name` is mandatory while creating or editing a Company
- System performs uniqueness validation for all companies

#### Type & Subtype

- Type can be: `Non-Profit` or `For-Profit`
- Under `Non-Profit`, no other classification 
- Under `For-Profit`, can be classified as `Public`, `Private`, or `Professional Services`
  - Under `Professional Services` can be classified as `Tax`, `Legal`, `Insurance` or `Consulting`  or  `Other`
- Type and Subtype can be changed anytime. There isn't any restriction.

#### Date of IPO

- Applicable only when type is `Public` 
- Its mandatory field



## Companies for Legal entities

For all legal entities other than Individual & Joint, System creates corresponding company.

When any legal entity is created, its corresponding company is also created. 

When any legal entity is deleted, its corresponding company is also removed

When legal entity is terminated, its corresponding company is archived.


## Archive / Restore company

- Archived companies aren't available in the auto-complete. So, the company which aren't used anymore but referenced in the older records, could be archived to avoid accidental usage of such company.
- Archived company can be restored anytime without any restriction. Once restored, it will become `active` and will be available in the auto-complete to reference it at other places.

### UI Requirement

Following applies to both: Action from the `item-context` menu (Single) or multiple selection:

- On click action is performed, immediately. No extra confirmation is needed.
- On Archive/Restore, shows toast "Archived successfully" or "Restored successfully".


## Delete company

- If company is referenced to any other place, it can't be deleted. It shows all its relations and User is offered 2 choices: `Archive` and `Replace and Delete`.

### UI Requirement

- If the company isn't referenced anywhere, can be deleted with simple delete-confirmation.
- Otherwise, shows all its relations and user has to choose one of the option: `REPLACE` or `ARCHIVE`.
- When one of the selected company is referenced anywhere, then we simply deny the action. User need to manually delete individual company.

## Replace and Delete

- User need to choose one of the existing company & then Replace.
- `Replace` button is disabled when company isn't yet selected.
- Drop-down doesn't offer the company which is being replaced.

### UI Requirement

- On `Replace and Delete`, all the references where the current company is referenced will be updated with the new company and then this company is deleted.
- "Replace and Delete" isn't available when deleting multiple companies together. (It's decided just to avoid unnecessary UI complexity)

## Browse companies

- Shows records in 6 tabs: CLIENT ENTITIES, PROFESSIONAL SERVICES, NON-PROFIT, PUBLIC, PRIVATE & ARCHIVED
- Shows Number of records with each tab

### UI Requirement

- By default CLIENT ENTITIES tab is visible
- All tabs are always visible, regardless of available company under it.
- When there isn't any record under any tab, shows `No records found` message.
- COMPANIES tab
  - COMPANIES tab shows normal companies
  - Columns: Individual Icon, `Name`, `Group`, `Phone`
  - Sorting: By Name in ascending order. Manual/Custom sorting on other fields aren't available.
  - context-menu actions
    - Edit
    - Archive
    - Delete
    - Replace and Delete
  - Multi selection is available
- CLIENT ENTITIES
  - Shows companies of legal entities
  - Shows records group by family
  - Column: Only Name (No other columns)
  - Under each family shows records in ascending order of Name
  - With each record shows icon for company
  - Context-menu action not available
  - Multi selection is not available in this page
- PROFESSIONAL SERVICES
  - Shows companies of type `Professional Services`
  - Shows records grouped by subtype of Professional services:  `Tax`, `Legal`, `Insurance` or `Consulting` & `Other`
  - Under each group records are sorted in Alphabetical order
  - Columns: `Name`, `Group`, `Phone`
  - context-menu actions for Normal companies
    - Restore
    - Delete
    - Replace and Delete
  - Multi selection is available
- NON-PROFIT, PRIVATE, PUBLIC
  - Shows related type of companies in each tab
  - Records are sorted in Alphabetical order
  - Columns: `Name`, `Group`, `Phone`
  - context-menu actions for Normal companies
    - Restore
    - Delete
    - Replace and Delete
  - Multi selection is available
- ARCHIVE
  - Shows all type of companies : Normal companies and companies of legal entities
  - Sorting: By Name in ascending order.
  - Columns: Individual Icon, `Name`, `Type` `Group`, `Phone`
  - Type column
    -  shows - for Client entities (companies of legal entity)
    - For Normal companies shows Type and Subtype for e.g. `For-Profit | Public` or `For-Profit | Private` or `For-Profit | Professional Services | Tax`
  - Shows icon only for companies of legal entities
  - context-menu actions for Normal companies
    - Restore
    - Delete
    - Replace and Delete
- Context-menu action not available for client companies
  - Multi selection is available
  - When client entities are selected in multi select mode, Multi select actions will be disable and it will show tooltip “You need to remove Client entities from selection in order to perform this action”
- Shows `-` in column which doesn't have value
- On mouse hover of record shows hover effect
- On click of any record
  - For Normal companies, opens view dialog
  - For Client companies, opens workspace page


## View Normal Company

- User can view company by clicking on company row
- View is presented in Dialog
- Shows `-` for fields which doesn't have value
- Type field shows type and subtype both separated by pipe for e.g. `For-Profit | Public` or `For-Profit | Private` or `For-Profit | Professional Services | Tax`

### Employees section

- If any contact is associated with Company, that contact is shown under `Employees` section
- Shows Name, phone number and email of the contact
- Name is shown as hyperlink and clicking on it opens contact view dialog
- If contact  is Archived, it won't be available here



See [Companies Mockups](https://drive.google.com/drive/folders/1KQXX8UApjpGWxi5S0IJ88IERqqL6wmRb) here