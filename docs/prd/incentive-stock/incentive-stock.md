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

### UI Rule

Mockup //TODO

- Error message : `Incentive Stock already exists`.

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


