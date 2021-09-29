# Incentive Stock

Incentive Stock is not applicable for `Foundation` & `Estate` types of legal entities. (For Partnership and Trust its applicable as said by Keith in [this card comment](https://a.kerika.com/C7_/board/BFG6C/BZ5IZ?tab=comments))

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

Incentive stock can't be added manually. Its always added when adding a Grant.



## Edit Incentive Stock

### UX Rule

- For Private type company, Edit is always possible
  - Company name can be changed only when Grant doesn't exists.
  - Date & Stock Price can be changed anytime
- For Public & Limited Partnership type company, Edit is not possible. (When Grant exists, doesn't allow Edit because Date & Stock Price fields are not applicable so nothing remains to edit).

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



## Auto-Delete Incentive Stock

- Incentive stock is not added manually. So it can't be deleted manually.
- Suppose the incentive stock has only one grant available and the user deletes that grant. So the system will auto delete that incentive stock.

### Scenarios

#### Scenario 1:

Given: I have one incentive stock of public type company

And: That incentive stock has one NQSO type grant available.

When: User deletes that grant

Then: Grants will be deleted

And: System will auto delete that incentive stock.

