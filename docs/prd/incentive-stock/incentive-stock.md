# Incentive Stock

Only Public, Private and Limited Partnership are allowed to be added as Incentive stock.

For public company, it shows last day closing price of stock pulled form stock exchange. 

For Private company, we can not pull price so it allows user to enter date and price manually. 

For Limited partnership, Date and Stock price are not applicable

## Entity Details

#### Company Name

Company can be Public, Private & Limited Partnership. Mandatory field.

#### Date

Applicable only for `Private` type company.

Its a Date for the Stock price. Its a mandatory field. 

This date can not be future date.

#### Stock Price

Applicable only for `Private` type company.

Its amount field. Its a mandatory field.



## Add Incentive Stock

### UX Rule

- Does not allowed to add same name company otherwise system shows error message.
- For Public type incentive stock, when stock symbol is not available for the selected public companies then shows error message in the Stock symbol field. (Because we won't be able to pull stock price without stock symbol)

### UI Rule

Mockup //TODO

- Error message : `Incentive Stock already exists`.
- Error message for Stock Symbol: `Stock symbol is mandatory for public type companies`.


### Scenarios

#### Scenario 1: Add Incentive Stock for Private type company

Given : I have Add Incentive Stock dialog open 

When : I select Private type company in the `Company Name` field.

Then : Type field will show type and Introduces two new fields `Date` and `Stock Price`.

#### Scenario: Future date is not allowed for private type incentive stock.

Given : I have Add Incentive Stock dialog open

When : I enter Future date in Date field.

Then :  Date field shows error about it should be lower than current date. 

#### Scenario: Add Incentive Stock for Public type company.

Given : I have Add Incentive Stock dialog open

When : I select a Public type company in the `Company Name` fields.

Then: Type field will show type and `Stock Symbol` shows the stock symbol of that company.

#### Scenario: When Public Stock companies don’t have stock symbol.

Given :  I have Add Incentive Stock dialog open

And : I select a public type company in the company name field.

When : Stock symbol is not added for that public company.

Then: Show proper error message because we won't be able to pull stock price without stock symbol.

#### Scenario : Add Incentive Stock for Limited Partnership Company.

Given : I have Add Incentive Stock dialog open 

When : I select Limited Partnership type company in the `Company Name` field.

Then : Type field will show it type.

#### Scenario : When a user enters the same name company for a second time.

Given : There is one Microsoft incentive stock already available. 

And : I have Add Incentive dialog open

When : I add the same name "Microsoft" company for the second time.

Then : System shows an error message.

#### Scenario : Company name field is an auto-complete dropdown. Doesn’t allow you to enter a new name.

Given : I have Add Incentive dialog open

When : I enter a new name which is not available in dropdown.

Then : It does not allowed to add new name. So system will reset it..

#### Scenario: Company dropdown shows type as secondary information.

Given : I have Add Incentive dialog open.

And : I click on Company name.

When : It will show list of public, private and limited partnership type companies.

Then : This list shows the company type in the secondary information along with the company.



## Edit Incentive Stock

### UX Rule

- For Private type company, Edit is always possible
  - Company name can be changed only when Grant doesn't exists.
  - Date & Stock Price can be changed anytime
- For Public & Limited Partnership type company, Edit is only possible when Grant doesn't exists (When Grant exists, doens't allow Edit because Date & Stock Price fields are not applicable so nothing remains to edit)

### UI Rule

Mockup //TODO



## Delete Incentive Stock

### UX Rule

- If Incentive stock has grant then delete not possible otherwise delete possible.
- On clicks, open delete confirmation dialog.

### UI Rule

Mockup of delete not possible & Mockup of Delete possible



# Scenarios 

## Add Incentive Stock dialog



