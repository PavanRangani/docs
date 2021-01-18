# Companies

- `Companies` represents a real-world Company
- It's used to track information about the company to which Athena Clients deal. e.g. If someone has  Bank Account in bank then that bank needs to be exist as company in the System. It was just one example, there are many other places where the company are used.
- It's kind of Master entity of the System. (It's not dependent on anyone, but other data references it)
- Supported actions: Create, Update, Delete, Archive, Replace and Delete.

See [Companies URLs here](../webapp/application-url-navigation.md#companies)


## Entity Info

#### Name

- Only `Name` is mandatory while creating or editing a Company
- System performs uniqueness validation for all companies

#### Type & Subtype

- Type can be: `Non-Profit` or `For-Profit`
- Under `Non-Profit`, no other classification 
- Under `For-Profit`, can be classified as `Public`, `Private`,  `Professional Services ` , `Investment Fund` ,` Digital Currency` and `Other`.
  - Under `Professional Services` can be classified as `Tax`, `Legal`, `Insurance` or `Banking/Credit`.
  - Under `Investment Fund` can be classified as `ETF`, `Mutual Fund`,  `Limited Partnership`.
- Type and Subtype can be changed anytime. There isn't any restriction.

#### Date of IPO

- Applicable only when type is `Public` .
- Its mandatory field.


#### Organization Group

- Organization group will only be applicable for `Non-Profit`  type.  Its not a mandatory field. 
- Auto complete dropdown of the `Non-Profit` type company. Same company won’t be available in dropdown.
- When a user types a new name in the Organization group which is not available in dropdown, the system will create a new company of type `Non-Profit`. 

#### Stock Exchange

- Stock Exchange will only be applicable for `For-Profit | Public`  and  `For-Profit |Investment Fund | ETF`. Its not a mandatory field.
- Its company auto-complete dropdown.




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

- Shows records in 7 tabs: CLIENT ENTITIES, PROFESSIONAL SERVICES, NON-PROFIT, PUBLIC, PRIVATE, INVESTMENT FUND , DIGITALCURRENCY, OTHER & ARCHIVED
- Shows Number of records with each tab

### UI Requirement

- By default CLIENT ENTITIES tab is visible.

- All tabs are always visible, regardless of available company under it.

- When there isn't any record under any tab, shows `No Records Found` message.

- Multi selection is available for all type of Normal Company except `Client Entities`.

- Context-menu action not available for client companies

- context-menu actions for all type of company

  - Edit
  - Replace and Delete
  - Archive
  - Delete

- context-menu actions for `Archived` company

  - Replace and Delete
  - Restore
  - Delete

- Shows `-` in column which doesn't have value

- On mouse hover of record shows hover effect

- On click of any record
  - For Normal companies, opens view dialog
  - For Client companies, opens workspace page
  
  

#### CLIENT ENTITIES

Mockup //TODO 

- Shows companies of legal entities
- Shows records group by family
- Column: `Name`, `Organization Group`, `Website`, `Phone`
- Under each family shows records in ascending order of Name
- With each record shows icon for company

#### PROFESSIONAL SERVICES

[Mockup](https://drive.google.com/file/d/14VlqWN2BIyzIetmhYWYZ_L0oq9JWkJtk/view?usp=sharing) 

- Shows companies of type `Professional Services`
- Shows records grouped by subtype of Professional services:  `Tax`, `Legal`, `Insurance` or `Banking/Credit`
  - Under each group records are sorted in Alphabetical order
- For all subtypes in the  `Professional Services` tab, show one add button. 
  
  - Clicking on that add button will open companies' add dialog with type and subtype prefilled.
- Columns: `Name`, `Website`, `Phone`

#### NON-PROFIT

[Mockup](https://drive.google.com/file/d/1Fl1YjqPBBViz4K9CH6M3M-NOHRtO1Ldv/view?usp=sharing)

- Shows related type of companies in each tab
- Records are sorted in Alphabetical order
- Columns: `Name`, `Website`, `Phone`, `Organization Group`

#### PUBLIC COMPANIES, PRIVATE, DIGITAL CURRENCY, OTHER

Mockup //TODO

- Shows related type of companies in each tab
- Records are sorted in Alphabetical order
- Columns: `Name`, `Stock Exchange`, `Website`, `Phone`

#### INVESTMENT FUND

Mockup //TODO

- Shows companies of type `Investment Fund`.
- Shows records grouped by subtype of Investment Fund:  `ETF`, `Mutual Fund`, `Limited Partnership`.
  - Under each group records are sorted in Alphabetical order
- For all subtypes in the  `Investment Fund` tab, show one add button. 
  - Clicking on that add button will open companies' add dialog with type and subtype prefilled.
- Columns: `Name`, `Website`, `Phone`

#### ARCHIVED

[Mockup](https://drive.google.com/file/d/1Twe1_KwXHihI37ian3lGtqjlYtD46LFt/view?usp=sharing) 

- Shows all type of companies : Normal companies and companies of legal entities
- Sorting: By Name in ascending order.
- Columns: Individual Icon, `Name`, `Type` `Website`, `Phone`,  `Organization Group`
- Type column
  -  shows - for Client entities (companies of legal entity)
  -  For Normal companies shows Type and Subtype for e.g. `For-Profit | Public` or `For-Profit | Private` or `For-Profit | Other ` or `For-Profit | Professional Services | Tax`  or `For-Profit | Investment Fund | ETF` or `For-Profit | Digital Currency`.
- Shows icon only for companies of legal entities
- When client entities are selected in multi select mode, Multi select actions will be disable and it will show tooltip `You need to remove Client entities from selection in order to perform this action`.




## View Normal Company

- User can view company by clicking on company row
- View is presented in dialog
- Shows `-` for fields which doesn't have value
- Type field shows type and subtype both separated by pipe for e.g. `For-Profit | Public` or `For-Profit | Private` or `For-Profit | Other` or `For-Profit | Professional Services | Tax` or `For-Profit | Investment Fund | ETF` or `For-Profit | Digital Currency`.

### Employees section

- If any contact is associated with Company, that contact is shown under `Employees` section
- Shows Name, phone number and email of the contact
- Name is shown as hyperlink and clicking on it opens contact view dialog
- If contact  is Archived, it won't be available here

### Organization Section

- Its applicable only for `Non-Profit` types company.
- `Organization section` will show the list of the `Company` or `Foundation (DAF)` where this company is selected as an `Organization Group`.
- Sorting order : Alphabetical sorting on name
- If the company is not available in the `Organization` section, show `No Organizations Available` message.



See [Companies Mockups](https://drive.google.com/drive/folders/1KQXX8UApjpGWxi5S0IJ88IERqqL6wmRb) here
