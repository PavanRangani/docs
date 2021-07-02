# Incentive Stock

Incentive Stock is not applicable for `Foundation`, `Partnership`, `Estate` & `Trust` types legal entities.

New Incentive Stock can only be added from an `Individual`. 

For `Joint`, records are pulled from both individuals.

Only Public, Private and Limited Partnership are allowed to be added as Incentive stock.

For public company, it shows last day closing price of stock pulled form stock exchange. 

For Private company, we can not pull price so it allows user to enter date and price manually. 

For Limited partnership, Date and Stock price are not applicable.

## Entity Details

#### Company Name

Company can be Public, Private & Limited Partnership. Mandatory field.

Shows company type as a Secondary Information.

#### Stock Price

Applicable only for `Private` type company.

Its amount field. Default value is set to `$0.00`.

#### Price as of Date

Applicable only for `Private` type company.

Its a Date for the Stock price. 

This date can not be future date.



## Add Incentive Stock

### UX Rule

- Does not allowed to add same name company otherwise system shows error message.
- For Public type incentive stock, when stock symbol is not available for the selected public companies then shows error message in the Stock symbol field. (Because we won't be able to pull stock price without stock symbol).
- For Private type incentive stock, 
  - When user enters a future date then system show proper message.
  - When data is available in any of the field (Stock Price or Price as of Date), other field will be mandatory. 
  - Doesn't show `*` in labels even if fields are mandatory.

### UI Rule

[Mockup of Add Incentive Stock for Private type company](https://drive.google.com/file/d/1_P6-UNQFEHvQY9aT6Z1Czq102jH7PKoq/view?usp=sharing)

[Mockup of Add Incentive Stock for Public type company](https://drive.google.com/file/d/1suD02Ji0uKfxy1Siz3qoiovjIfXZUKZy/view?usp=sharing)

[Mockup of Add Incentive Stock for Carried Interest type company](https://drive.google.com/file/d/1_-1mLZP1B9972r7mLnBf1h2AlFvDFy1W/view?usp=sharing)

- Error message : `Incentive Stock already exists`.
- Error message when future date is added for Private type stock : `Should be <= {Current Date}`.
- Error message for Stock Symbol: `Stock symbol is mandatory for public type companies`.


### Scenarios

#### Scenario 1: Add Incentive Stock for Private type company

Given : I have Add Incentive Stock dialog open 

When : I select Private type company in the `Company Name` field.

Then : Type field will show type and Introduces two new fields `Price as of Date` and `Stock Price`.

#### Scenario 2: Future date is not allowed for private type incentive stock.

Given : I have Add Incentive Stock dialog open

When : I enter Future date in `Price as of Date` field.

Then :  `Price as of Date` field shows error about it should be lower than current date. 

#### Scenario 3: Add Incentive Stock for Public type company.

Given : I have Add Incentive Stock dialog open

When : I select a Public type company in the `Company Name` fields.

Then: Type field will show type and `Stock Symbol` shows the stock symbol of that company.

#### Scenario 4: When Public Stock companies don’t have stock symbol.

Given :  I have Add Incentive Stock dialog open

And : I select a public type company in the company name field.

When : Stock symbol is not added for that public company.

Then: Show proper error message because we won't be able to pull stock price without stock symbol.

#### Scenario 5: Add Incentive Stock for Limited Partnership Company.

Given : I have Add Incentive Stock dialog open 

When : I select Limited Partnership type company in the `Company Name` field.

Then : Type field will show it type.

#### Scenario 6: When a user enters the same name company for a second time.

Given : There is one Microsoft incentive stock already available. 

And : I have Add Incentive dialog open

When : I add the same name "Microsoft" company for the second time.

Then : System shows an error message.

#### Scenario 7: Company name field is an auto-complete dropdown. Doesn’t allow you to enter a new name.

Given : I have Add Incentive dialog open

When : I enter a new name which is not available in dropdown.

Then : It does not allowed to add new name. So system will reset it..

#### Scenario 8: Company dropdown shows type as secondary information.

Given : I have Add Incentive dialog open.

And : I click on Company name.

When : It will show list of public, private and limited partnership type companies.

Then : This list shows the company type in the secondary information along with the company.

#### Scenario 9: When data is available in any of the field (`Price as of Date` and `Stock Price`), other field will be mandatory.

##### Scenario 9.1 

Given: I have Add Incentive Stock dialog open

And: I have selected Private type company

When: I enter a date in the `Price as of Date`

And: Click on `Add` button.

Then: System shows an error message in `Stock Price` field.

And: Doesn't show `*` in `Stock Price` labels.

##### Scenario 9.2

Given: I have Add Incentive Stock dialog open

And: I have selected Private type company

When: I enter a price in the `Stock Price`

And: Click on `Add` button

Then: System shows an error message in `Price as of Date` fields.

And: Doesn't show `*` in `Price as of Date` labels.

##### Scenario 9.3

Given: I have Add Incentive Stock dialog open

And: I have selected Private type company

When: I click on `Add` button

Then: System allow to add that stock without Stock Price and Date.

And: Doesn't show `*` in the both of fields.

##### Scenario 9.4

Given: I have Add Incentive Stock dialog open

And: I have selected Private type company

When: I enter a value in the `Stock Price` and `Price as of Date` .

And: I click on `Add` button

Then: System allows to add that stock with Stock Price and Date.

And: Doesn't show `*` in the both of fields.



## Edit Incentive Stock

### UX Rule

- For Private type company, Edit is always possible
  - Company name can be changed only when Grant doesn't exists.
  - Date & Stock Price can be changed anytime
- For Public & Limited Partnership type company, Edit is only possible when Grant doesn't exists (When Grant exists, doesn't allow Edit because Date & Stock Price fields are not applicable so nothing remains to edit)

### UI Rule

[Mockup](https://drive.google.com/file/d/1tsKw6xp20QouoDTydOCPG3wDIA98vyTq/view?usp=sharing)

### Scenarios

#### Scenario 1: If grant exists for public or limited partnership type incentive stock then edit is not available.

Given: I have one grant under Microsoft.

When: I click on vertmore button

Then: Edit action is not visible to me.

#### Scenario 2: For Private type, Edit action is available even if Grant exists.

Given: I have one grant under Microsoft

When: I click on vertmore button

Then: Edit action is available.

#### Scenario 3: For Private type, Edit action is available when Grant doesn’t exist.

Given: have no grant under Microsoft

When: I click on vertmore button

Then: Edit action is available.

#### Scenario 4: If grant does not exist then the user can edit the company name for all types.

Given: I have no grant under Microsoft

When: I open a edit dialog of Microsoft Incentive Stock

Then: it allows me to change the company name Microsoft to `Mandrona`.

#### Scenario 5: For Private type, users can change Date and Stock Price even if a grant exists.

Given: I have one grant under Microsoft

When: I open a edit dialog of Microsoft Incentive Stock

Then: it allows me to change the Stock Price and Date.

#### Scenario 6: For Private type, users can change Date and Stock Price even if a grant doesn’t exist.

Given: I have no grant under Microsoft

When: I open a edit dialog of Microsoft Incentive Stock

Then: it also allows me to change the Stock Price and Date.

#### Scenario 7: When data is available in any of the field (`Price as of Date` and `Stock Price`), other field will be mandatory.

##### Scenario 7.1 

Given: I have Edit Incentive Stock dialog open

And: I have selected Private type company

When: I enter a date in the `Price as of Date`

And: Click on `Save Changes` button.

Then: System shows an error message in `Stock Price` field.

And: Doesn't show `*` in `Stock Price` labels.

##### Scenario 7.2

Given: I have Edit Incentive Stock dialog open

And: I have selected Private type company

When: I enter a price in the `Stock Price`

And: Click on `Save Changes` button

Then: System shows an error message in `Price as of Date` fields.

And: Doesn't show `*` in `Price as of Date` labels.

##### Scenario 7.3

Given: I have Edit Incentive Stock dialog open

And: I have selected Private type company

When: I click on `Save Changes` button

Then: System allow to save that stock without Stock Price and Date.

And: Doesn't show `*` in the both of fields.

##### Scenario 7.4

Given: I have Edit Incentive Stock dialog open

And: I have selected Private type company

When: I enter a value in the `Stock Price` and `Price as of Date` .

And: I click on `Save Changes` button

Then: System allows to save that stock with Stock Price and Date.

And: Doesn't show `*` in the both of fields.



## Delete Incentive Stock

### UX Rule

- If Incentive stock has grant then delete not possible otherwise delete possible.
- On clicks, open delete confirmation dialog.

### UI Rule

[Mockup of delete not possible](https://drive.google.com/file/d/13Robz_cfVbGGMYktCeMDbs2RIarWVosO/view?usp=sharing) & [Mockup of Delete possible](https://drive.google.com/file/d/14LmcPcmxdqHJPEmjgHyUz9M75Cbm3gb0/view?usp=sharing)

### Scenarios

#### Scenario 1: Show delete is not possible dialog when grant exists.

Given: I have one grant under Microsoft

When: I delete Microsoft

Then: it shows me `Delete Not Possible` dialog.

#### Scenario 2: Show delete confirmation dialog when grant doesn’t exist.

Given: I have no grants under Microsoft

When: I delete Microsoft

Then: it shows me the `Delete Confirmation` dialog.





