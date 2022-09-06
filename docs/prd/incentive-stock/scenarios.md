# Scenarios

## Add Grant

### Scenarios

#### Scenario 1

| Grant Type  |
| ----------- |
| NQSO        |
| ISO         |
| RSA         |
| RSU         |
| Stock Grant |

##### Rule 1: Add Grant for Private type company

Given : I have Add Grant dialog open for {grant type}

When : I select Private type company in the `Company Name` field.

Then : Type field will show type and Introduces two new fields `Price as of Date` and `Stock Price` in same dialog.

And: Based on type other fields will shown below.

##### Rule 2: Future date is not allowed for private type incentive stock.

Given : I have Add Grant dialog open for {grant type}

And: I select Private Type company in the `Company Name` field.

When : I enter Future date in `Price as of Date` field.

Then : `Price as of Date` field shows error about it should be lower than current date.

##### Rule 3: Add Grant for Public type company.

Given : I have Add Grant dialog open for {grant type}

When : I select a Public type company in the `Company Name` fields.

Then: Type field will show type and `Stock Symbol` shows the stock symbol of that company

##### Rule 4: When Public Stock companies don’t have stock symbol.

Given : I have Add Grant dialog open for {grant type}

And : I select a public type company in the company name field.

When : Stock symbol is not available for that public company.

Then: Show proper error message because we won't be able to pull stock price without stock symbol.

##### Rule 5: Company name field is an auto-complete dropdown. Doesn’t allow you to enter a new name.

Given : I have Add Grant dialog open for {grant type}

When : I enter a new name which is not available in dropdown.

Then : It does not allowed to add new name. So system will reset it.

##### Rule 6: Company dropdown shows type as secondary information.

###### 6.1

Given : I have Add Grant dialog open for {grant type}

When: I click on Company name.

And : It will show list of public and private companies.

Then : This list shows the company type in the secondary information along with the company

###### 6.2

Given : I have Add Grant dialog open for Carried Interest

When: I click on Company name.

And : It will show list of Limited Partnership type company.

Then : This list shows the company type in the secondary information along with the company

##### Rule 7: When data is available in any of the field (`Price as of Date` and `Stock Price`), other field will be mandatory.

###### 7.1

Given : I have Add Grant dialog open for {grant type}

And: I have selected Private type company

And: `Price as of Date` and `Stock Price` both fields are introduced.

When: I enter a date in the `Price as of Date`

And: Click on `Add` button.

Then: System shows an error message in `Stock Price` field.

And: Doesn't show `*` in `Stock Price` labels.

###### 7.2 

Given : I have Add Grant dialog open for {grant type}

And: I have selected Private type company

When: I enter a price in the `Stock Price`

And: Click on `Add` button

Then: System shows an error message in `Price as of Date` fields.

And: Doesn't show `*` in `Price as of Date` labels.

###### Rulke 7.3

Given : I have Add Grant dialog open for {grant type}

And: I have selected Private type company

And: `Price as of Date` and `Stock Price` both fields are introduced.

When: I click on `Add` button

Then: System allow to add that stock without Stock Price and Date.

And: Doesn't show `*` in the both of fields.

###### 7.4

Given : I have Add Grant dialog open for {grant type}

And: I have selected Private type company

And: `Price as of Date` and `Stock Price` both fields are introduced.

When: I enter a value in the `Stock Price` and `Price as of Date` .

And: I click on `Add` button

Then: System allows to add that stock with Stock Price and Date.

And: Doesn't show `*` in the both of fields



##### Scenario 8: Add Grant for Limited Partnership Company.

Given : I have Add Grant dialog open for Carried Interest type

When : I select Limited Partnership type company in the `Company Name` field.

Then : Type field will show it type.



##### Scenario 9: When a user enters the same name company for a second time.

Given : There is one NQSO type `Microsoft` grant available

And : I have Add grant dialog open for NQSO type.

When : I add the same name "Microsoft" company for the second time.

And: I added grant in same company

Then : System add second grant in `Miscrosoft` grant.







#### Rule 1: Expiration date is always greater than Grant Date

| Grant Type |
| ---------- |
| NQSO       |
| ISO        |



##### Scenario 1.1

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021”

When: I enter Expiration date “11/11/2011”

Then: Expiration date field shows error about it should be greater than Grant date

##### Scenario 1.2

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021” and Expiration date “12/10/2028”

When: I change Expiration date to “12/10/2011”

Then: Expiration date field shows error about it should be greater than Grant date

##### Scenario 1.3

Given : I have Add {Grant Type} dialog open

And : I have entered Expiration date “12/10/2028”

When : I enter grant date “12/10/2029”

Then : Expiration date field shows error about it should be greater than Grant date

##### Scenario 1.4

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021” and Expiration date “12/10/2028”

When: I change Grant date to “12/10/2029”

Then: Expiration date field shows error about it should be greater than Grant date

#### Rule 2: Vest date is always higher than Grant Date.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 2.1

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021”

When: I enter Vest date “11/11/2020”

Then: Vest date field shows error about it should be greater than Grant date

##### Scenario 2.2

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021” and Vest date “12/10/2022”

When: I change Vest date to “12/10/2011”

Then: Vest date field shows error about it should be greater than Grant date

##### Scenario 2.3

Given : I have Add {Grant Type} dialog open

And : I have entered Vest date “12/10/2028”

When : I enter grant date “12/10/2029”

Then : Vest date field shows error about it should be greater than Grant date

##### Scenario 2.4

Given: I have Add {Grant Type} dialog open

And : I have entered Grant date “12/10/2021” and Vest date “12/10/2022”

When: I change Grant date to “12/10/2029”

Then: Vest date field shows error about it should be greater than Grant date

#### Rule 3: Vest date is always lower than Expiration Date

| Grant Type |
| ---------- |
| NQSO       |
| ISO        |

##### Scenario 3.1

Given: I have Add {Grant Type} dialog open with vesting schedule type “Custom”

And : I have entered Vest date “12/10/2021” for any one record

When: I enter Expiration date “11/11/2020”

Then: Vest date field shows error about it should be lower than Expiration date

##### Scenario 3.2

Given: I have Add {Grant Type} dialog open

And : I have entered Vest date “12/10/2021” and Expiration date “12/10/2028”

When: I change Vest date to “12/10/2 029”

Then: Vest date field shows error about it should be greater than Expiration date.

##### Scenario 3.3

Given : I have Add {Grant Type} dialog open

And : I have entered Expiration date “12/10/2028”

When : I enter vest date “12/10/2029”

Then : Vest date field shows error about it should be greater than Grant date

##### Scenario 3.4

Given: I have Add {Grant Type} dialog open

And : I have entered Vest date “12/10/2021” and Expiration date “12/10/2022”

When: I change Expiration date to “12/10/2019”

Then: Vest date field shows error about it should be greater than Grant date

#### Rule 4: UX - Shows default "Simple" selected in Vesting type.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

Given: I am on Browse Grant page

When: I open add {Grant Type} dialog.

Then: it shows me Vesting type selected as `Simple` by default.

#### Rule 5: UX -For Custom type - One of the records in the vesting schedule will always appear.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

Given: I have Add {Grant Type} dialog open

When : I select Custom type

Then: One record in the vesting schedule is shown by default

And : it doesn't have `X` button 

#### Rule 6: UX -For Custom type - Users can also add multiple vesting schedules.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 6.1

Given: I have Add {Grant Type} dialog open

And : I have selected a Custom type

When : I click on the ADD button in the vesting schedule

Then: Second records will be generated in the vesting schedule and ‘X’ button will appear for both records.



##### Scenario 6.2 - On click of ‘X’ button, remove that record.

Given: I have Add {Grant Type} dialog open 

And : I have selected a Custom type

And : I have added 3 schedules to the vesting schedule.

When : I click on the ‘X’ button in the first schedule

Then: That record will be removed from the vesting schedule.

#### Rule 7: UX - For Custom type - Show total of “Shares” at bottom of Shares column in the Vesting Schedule.

| Grant Type |
| ---------- |
| NQSO       |
| ISO        |
| RSA        |
| RSU        |

##### Scenario 7.1

Given: I have Add {Grant Type} dialog open 

And : I have added 2 schedules to the vesting schedule

When : I enter the share value "120,000" and "100,000" in that schedule.

Then: Total of shares will show me “220,000”.

##### Scenario 7.2

Given: I have Add {Grant Type} dialog open 

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "120,000" and "100,000" in that schedule.

When : I change the first share value “120,000” to “150,000”

Then: Total of shares will show me “250,000”.

##### Scenario55 7.3

Given: I have Add {Grant Type} dialog open 

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "120,000" and "100,000" in that schedule.

When :I add a third schedule and enter the share price "100,000" in that schedule.

Then: Total of shares will show me “320,000”.

#### Rule 8: UX - For Custom type - Value of both "Total Share" and "Shares Granted" should be the same.

| Grant Type |
| ---------- |
| NQSO       |
| ISO        |
| RSA        |
| RSU        |

##### Scenario 8.1

Given: I have Add {Grant Type} dialog open.

And : I have added “250,000” in the Shares Granted.

And : I have added 2 schedules to the vesting schedule

When : I enter the share value "120,000" and "100,000" in that schedule.

Then : Total share will be "220,000". So the error below the Total Shares column shows me that the value of both "Total Shares" and "Shares Granted" is not the same.

##### Scenario 8.2

Given: I have Add {Grant Type} dialog open.

And : I have added “250,000” in the Shares Granted.

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "150,000" and "100,000".

When : I change the Shares Granted value to “270,000”.

Then : Total share will be "250,000". So the error below the Total Shares column shows me that the value of both "Total Shares" and "Shares Granted" is not the same.

##### Scenario 8.3

Given: I have Add {Grant Type} dialog open.

And : I have added “250,000” in the Shares Granted.

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "150,000" and "100,000".

When : I change the value of the first vesting schedule “150,000” to “170,000”.

Then : Total share will be "270,000". So the error below the Total Shares column shows me that the value of both "Total Shares" and "Shares Granted" is not the same.

##### Scenario 8.4

Given: I have Add {Grant Type} dialog open.

And : I have added “250,000” in the Shares Granted.

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "150,000" and "100,000"..

When : I remove the first vesting schedule of “150,000”

Then : Total share will be "100,000". So the error below the Total Shares column shows me that the value of both "Total Shares" and "Shares Granted" is not the same.

##### Scenario 8.5

Given: I have Add {Grant Type} dialog open.

And : I have added “250,000” in the Shares Granted.

And : I have added 2 schedules to the vesting schedule

And : I have entered the share value "150,000" and "100,000".

When : I add the third vesting schedule "50,000" shares.

Then : Total share will be "300,000". So the error below the Total Shares column shows me that the value of both "Total Shares" and "Shares Granted" is not the same.

#### Rule 9: UX - “83b Election Filed” possible value can be ‘Yes’, ‘No’ or ‘Unknown’. Default value is set to `Unknown`.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

Given: I have Add {Grant Type} dialog open.

And : Default value is set to “Unknown”

When : I click on it. 

Then : Opens a dropdown with these 3 ‘Yes’, ‘No’ or ‘Unknown’ values.

#### Rule 10: When the user selects “83b Election Filed” value ‘Yes’, then 3 new fields ‘83b Income’, ‘83b Date’ and ‘83b Income’ are introduced. 

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

Given: I have Add {Grant Type} dialog open.

And : Default value is set to “Unknown”.

When : I select “Yes” in the dropdown.

Then : Three new fields are introduced.

#### Rule 11 :UX - “83b Income” is a calculated field. `83b Income` = `Shares Granted * 83b Price`. 

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 11.1

Given: I have Add {Grant Type} dialog open.

And : I have added “50,000” in the Shares Granted.

And : I have selected Yes in the “83b Election Filed”.

When : I add “100” price in the “83b Price” 

Then : “83b Income” field will show “50,000 * 100” = “5,000,000”.

##### Scenario 11.2

Given: I have Add {Grant Type} dialog open.

And : I have added “50,000” in the Shares Granted.

And : I have selected Yes in the “83b Election Filed”.

And : I have added the “100” price in the “83b Price” .

When: I change the Price of “83b Price” to 200.

Then : “83b Income” field will show “50,000 * 200” = “10,000,000”.

##### Scenario 11.3

Given: I have Add {Grant Type} dialog open.

And : I have added “50,000” in the Shares Granted.

And : I have selected Yes in the “83b Election Filed”.

And : I have added the “100” price in the “83b Price” .

When: I change the shares granted to 100,000.

Then : “83b Income” field will show “100,000 * 100” = “10,000,000”.

##### Scenario 11.4

Given: I have Add {Grant Type} dialog open.

And : I have added “50,000” in the Shares Granted.

And : I have selected Yes in the “83b Election Filed”.

And : I have added the “100” price in the “83b Price” .

When: I change the shares granted to 0.

Then : “83b Income” field will show “0 * 100” = “0”.

##### Scenario 11.5

Given: I have Add {Grant Type} dialog open.

And : I have added “50,000” in the Shares Granted.

And : I have selected Yes in the “83b Election Filed”.

And : I have added the “100” price in the “83b Price” .

When: I change the Price of “83b Price” to 0.

Then : “83b Income” field will show “50,000 * 0” = “0”.

#### Rule 12: For Simple type - Value of "Shares in First Vesting" should always be less than the “Shares Granted”.

| Grant Type |
| ---------- |
| NQSO       |
| ISO        |
| RSA        |
| RSU        |

##### Scenario 12.1

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

And : I have added the “50,000” in the Shares Granted .

When: I enter the value of “100,000” in the Shares in First Vesting.

Then : “Shares in First Vesting” field shows error about it should be Less than Shares Granted

##### Scenario 12.2

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

And : I have added the “150,000” in the Shares In first vesting.

When: I enter the value of “100,000” in the Shares Granted.

Then : “Shares in First Vesting” field shows error about it should be Less than Shares Granted.

##### Scenario 12.3

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

And : I have added the “50,000” in the Shares Granted

And : I have added the “10,000” in the Shares in first vesting.

When: I change the value of shares in first vesting to“70,000”.

Then : “Shares in First Vesting” field shows error about it should be Less than Shares Granted

##### Scenario 12.4

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

And : I have added the “50,000” in the Shares Granted

And : I have added the “40,000” in the Shares in first vesting.

When: I change the value of Shares Granted to“30,000”.

Then : `Shares in First Vesting` field shows error about it should be Less than Shares Granted.

#### Rule 13 : UX -For Simple type - Show proper message under vesting schedule until user adds data to vesting details.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

When: No details added to the vesting details.

Then : Vesting Schedule section shows the proper message.

#### Rule 14 : UX -For Simple type -  Once a user adds a value in the vesting schedule then the Vesting Schedule is auto populated based on the details.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 14.1 

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

When: All details are added to the vesting section.

Then : Auto schedule will be generated in the vesting schedule as per the vesting details.

##### Scenario 14.1  : UX - Auto populated records are sorted in the ascending order of vest date in the Vesting Schedule.

Given: I have Add {Grant Type} dialog open.

And : I have selected a Simple type.

When: All details are added to the vesting section.

Then : Auto schedule will be generated in the vesting schedule as per the vesting details and that schedule is sorted in ascending order of Vest Date.

#### Rule 15 : UX - For Simple type - date and Number of shares will be auto populated based on the other values entered by the user.

| Grant Type       |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 15.1

Given: I have Add {Grant Type} dialog open.

And : I have added “300,000” shares in the shares granted.

And : I have selected a Simple type.

When : I have added all details like “First Vest date” is “12/20/2019”,  “Shares in First Vesting” is “100,000”,  “Vesting Frequency” is Quarterly, “Vesting Periods” is 8 and “Shares per period” is 25,000. 

Then : System will create an auto schedule as shown in the table below.

| Vest Date    | Shares  | Shares Vested |
| ------------ | ------- | ------------- |
| Dec 20, 2019 | 100,000 | -             |
| Mar 20, 2020 | 50,000  | -             |
| Jun 20, 2020 | 50,000  | -             |
| Sep 20, 2020 | 50,000  | -             |
| Dec 20, 2020 | 50,000  | -             |
| Mar 20, 2021 | 50,000  | -             |
| Jun 20, 2021 | 50,000  | -             |
| Sep 20, 2021 | 50,000  | -             |
| Dec 20, 2021 | 50,000  | -             |



##### Scenario 15.2

Given: I have Add {Grant Type} dialog open.

And : I have added “300,000” shares in the shares granted.

And : I have selected a Simple type.

And : I have added all details like “First Vest date” is “12/20/2019”,  “Shares in First Vesting” is “100,000”,  “Vesting Frequency” is Quarterly, “Vesting Periods” is 8 and “Shares per period” is 25,000. 

When : I change  “Vesting Frequency” from Quarterly to Yearly.

Then : System will create an auto schedule as shown in the table below.

| Vest Date    | Shares  | Shares Vested |
| ------------ | ------- | ------------- |
| Dec 20, 2019 | 100,000 | -             |
| Dec 20, 2020 | 50,000  | -             |
| Dec 20, 2021 | 50,000  | -             |
| Dec 20, 2022 | 50,000  | -             |
| Dec 20, 2023 | 50,000  | -             |
| Dec 20, 2024 | 50,000  | -             |
| Dec 20, 2025 | 50,000  | -             |
| Dec 20, 2026 | 50,000  | -             |
| Dec 20, 2027 | 50,000  | -             |

#### Rule 16 : UX - For Simple type - Value of both "Total Share" and "Shares Granted" should be the same.

##### Scenario 16.1 

Given: I have Add {Grant Type} dialog open.

And : I have added “300,000” shares in the shares granted.

And : I have selected a Simple type.

And : I have added all details like “Shares in First Vesting” is “100,000”,  “Vesting Frequency” is Quarterly, “Vesting Periods” is 8 and “Shares per period” is 25,000. 

And : System generates a vesting schedule based on the above vesting details and shows the total shares "300,000".(So both "Total Shares" and "Share Granted" values are the same here)

When: I change the “Vesting periods” from 8 to 10.

Then : Total Share will show me "350,000" that does not match with Shares Granted. So the system shows error in the vesting section.

##### Scenario 16.2 

Given: I have Add {Grant Type} dialog open.

And : I have added “300,000” shares in the shares granted.

And : I have selected a Simple type.

And : I have added all details like “Shares in First Vesting” is “100,000”,  “Vesting Frequency” is Quarterly, “Vesting Periods” is 8 and “Shares per period” is 25,000. 

And : System generates a vesting schedule based on the above vesting details and shows the total shares "300,000".(So both "Total Shares" and "Share Granted" values are the same here)

When: I change the “Shares per period” from 25,000 to 30,000.

Then : Total Share will show me "340,000" that does not match with Shares Granted. So the system shows error in the vesting section.

##### Scenario 16.3

Given: I have Add {Grant Type} dialog open.

And : I have added “300,000” shares in the shares granted.

And : I have selected a Simple type.

And : I have added all details like “Shares in First Vesting” is “100,000”,  “Vesting Frequency” is Quarterly, “Vesting Periods” is 8 and “Shares per period” is 25,000. 

And : System generates a vesting schedule based on the above vesting details and shows the total shares "300,000".(So both "Total Shares" and "Share Granted" values are the same here)

When: I change the “Shares Granted” from 300,000 to 350,000.

Then : Here ‘Total Share’ and ‘Shares Granted’ do not match. So the system shows error in the vesting section.

#### Rule 17 : Shares Purchased on Grant is applicable only for RSA

##### Scenario 17.1 - Decimal value is not allowed

#### Rule 18 : Price per Shares is applicable only for RSA

##### Scenario 18.1 - Decimal value is allowed.

#### Rule 19 : Total Purchase Price is applicable for RSA

##### Scenario 19.1 : Total Purchase Price = Shares Purchased on Grant * Price per Share

#### Rule 20 : Liquidation Condition is applicable only for RSU.

##### Scenario 20.1 - Default value of “Liquidation Condition” is Unknown.

##### Scenario 20.2 - On click, open dropdown with “Unknown”, “Yes” & “No”.

#### Rule 21: Treatment on Termination is applicable only for RSU.

##### Scenario 21.1 - Its free form text input field. Users can add anything. 

#### Rule 22: “Vest at Death” is a dropdown of “Unknown”, “Yes” & “No”.

##### Scenario 22.1 - Default value is set to “Unknown”.



## Edit Grant

### Scenarios

#### Rule 1 - UX - Anything can be changed until exercise is not performed for NQSO and ISO and Vested details are not entered for RSA, RSU or Carried interest.

Given: I have added incentive stock of Microsoft Public company.

| Type             |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

And : This stock has one grant in the {Type}.

And : Not a single exercise has been performed in this grant.

When: I click on the Edit action in the vertmor of that grant.

Then : Open Edit Grant dialog and all fields are editable.

#### Rule 2 - UX - Once exercise is performed or Vested details are entered, Edit is restricted for some fields.

Given: I have added incentive stock of Microsoft Public company.

| Type             |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

And : This stock has one grant in the {Type}.

And : Exercise has been performed in this grant.

When: I click on the Edit action in the vertmor of that grant.

Then : Open Edit grant dialog and some of the fields Grant Date , Share Granted, Expiration Date & whole Vesting section are not editable.

#### Rule 3 - UX - Anything can be changed until Forfeit, Exchange & Accelerate actions are not performed for NQSO, ISO, RSA, RSU & Carried Interest.

| Type             |
| ---------------- |
| NQSO             |
| ISO              |
| RSA              |
| RSU              |
| Carried Interest |

##### Scenario 3.1 

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Acclerate` action for one of the unvested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.

##### Scenario 3.2

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Forfeit` action for one of the vested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.

##### Scenario 3.3

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Exchange` action for one of the vested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.

##### Scenario 3.4

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Exercise` action for the first vested scheduled.

And: I have also performed `Accelerate` action in unvested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.

##### Scenario 3.5

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Exercise` action for the first vested scheduled.

And: I have also performed `Forfeit` action in unvested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.

##### Scenario 3.6

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And: Grant has 5 vested scheduled and 5 unvested scheduled available.

And: I have performed `Exercise` action for the first vested scheduled.

And: I have also performed `Exchange` action in unvested scheduled.

When: I open a edit dialog of that grant.

Then: Some of the field are shown disabled and show proper message.



## Delete Grant

### Scenario

#### Rule 1 - UX - If exercise is not performed for NQSO and ISO or Vested details are not entered for RSA, RSU or Carried interest, Grant can be deleted

##### Scenario 1.1 Delete NQSO type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : Not a single exercise has been performed in this grant.

When: I click on the Delete action in the vertmore of that grant.

Then : Open Delete confirmation dialog.

##### Scenario 1.2 Delete ISO type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the ISO.

And : Not a single exercise has been performed in this grant..

When: I click on the Delete action of that grant

Then : Open Delete confirmation dialog.

##### Scenario 1.3 Delete RSA type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And : Not a single exercise has been performed in this grant..

When: I click on the Delete action of that grant

Then : Open Delete confirmation dialog.

##### Scenario 1.4 Delete RSU type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSU.

And : Not a single exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete confirmation dialog.

##### Scenario 1.5 Delete Carried Interest type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the Carried Interest.

And : Not a single exercise has been performed in this grant..

When: I click on the Delete action of that grant

Then : Open Delete confirmation dialog.

#### Rule 2 - UX - If exercise is performed for NQSO and ISO or Vested details are entered for RSA, RSU or Carried interest, Grant can not be deleted

##### Scenario 2.1 Delete NQSO type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : Exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete not possible dialog.

##### Scenario 2.2 Delete ISO type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the ISO.

And : Exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete not possible dialog.

##### Scenario 2.3 Delete RSA type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And : Exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete not possible dialog.

##### Scenario 2.4 Delete RSU type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSU.

And : Exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete not possible dialog.

##### Scenario 2.5 Delete Carried Interest type Grant

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the Carried Interest.

And : Exercise has been performed in this grant.

When: I click on the Delete action of that grant

Then : Open Delete not possible dialog.



## Browse Grant

### Scenario

#### Browse Incentive Stock

##### Rule 1- UX -For Public and Private, On click of Add button, opens dropdown with these 4 options NQSO, ISO , RSA & RSU.

Given: I have added incentive stock of Microsoft Public Company.

When: I click on the Add button.

Then : opens a dropdown with these 4 options NQSO, ISO , RSA & RSU.

##### Rule 2- UX -For Limited Partnership, On click of Add button, opens add dialog for Carried Interest

Given: I have added incentive stock of `Madrona` Limited Partnership Company.

When: I click on the Add button.

Then : opens an add dialog of Carried Interest.

##### Rule 3- UX - When Grant doesn’t exist of any incentive stock, on click of vertmor action, shows EDIT and DELETE action.

Given: I have added incentive stock of Microsoft Public Company.

And : This stock doesn’t have any grants.

When: I click on the vertmore action.

Then : It shows me “Edit” and “Delete” action.

##### Rule 4- UX - For Public/Limited partnership, When Grant exists, on click of vertmor action, shows only DELETE action.

| Company type        |
| ------------------- |
| Public              |
| Limited Partnership |

Given: I have added incentive stock of {Company type}.

And : This stock has some grants.

When: I click on the vertmore action of this incentive stock

Then : It shows me only the `Delete` action.

##### Rule 5- UX - For Private, When Grant exists, on click of vertmor action, shows EDIT and DELETE action.

Given: I have added incentive stock of `Bandcamp` private company.

And : This stock has some grants.

When: I click on the vertmore action.

Then : It shows me `Edit` and `Delete` action.

##### Rule 6- UX - Under each Incentive stock, grants are grouped by its type

Given: I have added incentive stock of Microsoft Public company.

And : This stock has some grants from NQSO, ISO, RSA and RSU.

When: I open the list page of Incentive Stock

Then : It shows grants are grouped by its type NQSO, ISO , RSA , RSU.

#### Browse Grant

##### Rule 7- UX - Under each Grant type table, Records are sorted in the descending order of Grant Date.

| Grant type          |
| ------------------- |
| Public              |
| Private             |
| Limited Partnership |

Given: I have added incentive stock of Microsoft {Grant Type}.

And : This stock has some grants in the NQSO as per following date

| Grant date |
| ---------- |
| 01/01/2017 |
| 01/18/2016 |
| 01/05/2019 |

When: I open the list page of Incentive Stock

And : Observe the records under Microsoft

Then : records are sorted in the descending order of Grant Date as follows

| Grant date |
| ---------- |
| 01/01/2017 |
| 01/18/2016 |
| 01/05/2019 |

##### Rule 8 - UX - For each Grant shows one expand icon. On click of the expand icon, shows details of that particular Grant.

| Grant type          |
| ------------------- |
| Public              |
| Private             |
| Limited Partnership |

Given: I have added incentive stock of Microsoft {Grant type}.

And : it has some grants of type NQSO.

And : with each grant it shows one expand icon

When: I click on that expand icon

Then : it shows vesting schedule details of that grant

And : now icon is changed to shrink icon 

#### Rule 9 - UX - When the value of "83b election" is yes, show "83b Date" in the list page.

| Type                |
| ------------------- |
| Public              |
| Private             |
| Limited Partnership |

##### Scenario 9.1

Given: I have added incentive stock of Microsoft {Type}.

And : This stock has one grant in the NQSO.

And : ‘83b Election filed’ is yes in this grant and ‘83b Date’ is “12/20/2018” .

When: I open the list page of incentive stock.

Then : “83b Election Filed” column will show the date of “83b Date”.

##### Scenario 9.2  - UX - When the value of "83b election" is No, show "No" in the list page.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : ‘83b Election filed’ is No in this grant.

When: I open the list page of incentive stock.

Then : “83b Election Filed” column will show “No”.

##### Scenario 9.3  - UX - When the value of "83b election" is Unknown, show "-" in the list page.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : ‘83b Election filed’ is Unknown in this grant.

When: I open the list page of incentive stock.

Then : “83b Election Filed” column will show “-”.

#### Rule 10 - UX - Next Vest date column will show the next date when the shares or percentages are to be vested.

| Type                |
| ------------------- |
| Public              |
| Private             |
| Limited Partnership |

Given: I have added incentive stock of Microsoft {Type}.

And : This stock has one grant in the NQSO.

And: As per the below table. Assume that last vest date is “Dec 20, 2022” and next vest date is “Dec 20, 2023”.

| Vest Date    | Shares | Shares Vested |
| ------------ | ------ | ------------- |
| Dec 20, 2019 | -      | 100,000       |
| Dec 20, 2020 | -      | 50,000        |
| Dec 20, 2021 | -      | 50,000        |
| Dec 20, 2022 | -      | 50,000        |
| Dec 20, 2023 | 50,000 | -             |
| Dec 20, 2024 | 50,000 | -             |
| Dec 20, 2025 | 50,000 | -             |
| Dec 20, 2026 | 50,000 | -             |
| Dec 20, 2027 | 50,000 | -             |

When: I see this grant in browse grant page

Then : It shows me the "12/20/2023" in the 'Next Vest Date' column.

#### Rule 11 - UX - If the grant does not have the next vest date, it will show '-'.

| Type                |
| ------------------- |
| Public              |
| Private             |
| Limited Partnership |

Given: I have added incentive stock of Microsoft {Type}.

And : This stock has one grant in the NQSO.

And: As per the below table. Assume that the last vest date is “Dec 20, 2027” and there is no next vest date available.

| Vest Date    | Shares | Shares Vested |
| ------------ | ------ | ------------- |
| Dec 20, 2019 | -      | 100,000       |
| Dec 20, 2020 | -      | 50,000        |
| Dec 20, 2021 | -      | 50,000        |
| Dec 20, 2022 | -      | 50,000        |
| Dec 20, 2023 | -      | 50,000        |
| Dec 20, 2024 | -      | 50,000        |
| Dec 20, 2025 | -      | 50,000        |
| Dec 20, 2026 | -      | 50,000        |
| Dec 20, 2027 | -      | 50,000        |

When: I see this grant in the browse grant page.

Then : Show me the "-" in the 'Next Vest Date' column.


## Browse any Single Grant

#### Rule 1 - UX - On click of Grant, show details of its Vesting schedule. 

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

When: I click on that grant.

Then : That grant is expanded and shows details of its vesting schedule.

#### Rule 2 - UX - Records are sorted in ascending order of Vest Date.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has some grants in the NQSO.

And : That grant has some vesting schedule as per the following date.

| Vest Date    |
| ------------ |
| Dec 20, 2019 |
| Dec 20, 2020 |
| Dec 20, 2021 |
| Dec 20, 2022 |
| Dec 20, 2023 |
| Dec 20, 2024 |
| Dec 20, 2025 |
| Dec 20, 2026 |
| Dec 20, 2027 |

When: I see this grant in browse single grant page

And : Observe the records under that grant

Then : records are sorted in the descending order of vest date as follows

| Vest Date    |
| ------------ |
| Dec 20, 2019 |
| Dec 20, 2020 |
| Dec 20, 2021 |
| Dec 20, 2022 |
| Dec 20, 2023 |
| Dec 20, 2024 |
| Dec 20, 2025 |
| Dec 20, 2026 |
| Dec 20, 2027 |

#### Rule 3 - UX - If Vest Date is not passed, means it's Unvested. Those shares are shown in the Unvested column.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And: As per the table below, not a single grant schedule has passed. So all the shares will appear in the unvested column.

| Vest Date    | Unvested | Vested |
| ------------ | -------- | ------ |
| Dec 20, 2019 | 100,000  | -      |
| Dec 20, 2020 | 50,000   | -      |
| Dec 20, 2021 | 50,000   | -      |
| Dec 20, 2022 | 50,000   | -      |
| Dec 20, 2023 | 50,000   | -      |
| Dec 20, 2024 | 50,000   | -      |
| Dec 20, 2025 | 50,000   | -      |
| Dec 20, 2026 | 50,000   | -      |
| Dec 20, 2027 | 50,000   | -      |

When: I see this grant in browse any single grant page

Then : It shows me the following table.

| Vest Date    | Unvested | Vested |
| ------------ | -------- | ------ |
| Dec 20, 2019 | 100,000  | -      |
| Dec 20, 2020 | 50,000   | -      |
| Dec 20, 2021 | 50,000   | -      |
| Dec 20, 2022 | 50,000   | -      |
| Dec 20, 2023 | 50,000   | -      |
| Dec 20, 2024 | 50,000   | -      |
| Dec 20, 2025 | 50,000   | -      |
| Dec 20, 2026 | 50,000   | -      |
| Dec 20, 2027 | 50,000   | -      |

#### Rule 4 - UX - When shares are Unvested, other columns except unvested will be always blank.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And: Not a single share has been vested in it.

When: I see this grant in browse any single grant page

Then : There I will see a '-' in a column other than Unvested. See this

#### Rule 5: If the Vest Date is passed, means it's vested. Those shares are shown in the Vested column.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And: As per the table shown below, the vest date of some shares has passed. So it is shown in the share vested column.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 50,000  |
| Dec 20, 2021 | -        | 50,000  |
| Dec 20, 2022 | 50,000   | -       |
| Dec 20, 2023 | 50,000   | -       |
| Dec 20, 2024 | 50,000   | -       |
| Dec 20, 2025 | 50,000   | -       |
| Dec 20, 2026 | 50,000   | -       |
| Dec 20, 2027 | 50,000   | -       |

When: I see this grant in browse any single grant page

Then : It shows me the following table.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 50,000  |
| Dec 20, 2021 | -        | 50,000  |
| Dec 20, 2022 | 50,000   | -       |
| Dec 20, 2023 | 50,000   | -       |
| Dec 20, 2024 | 50,000   | -       |
| Dec 20, 2025 | 50,000   | -       |
| Dec 20, 2026 | 50,000   | -       |
| Dec 20, 2027 | 50,000   | -       |

#### Rule 6 - UX - Unvested schedule rows won't be clickable and that's why it's hover effect won't be available. 

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And: All shares are unvested in this grant.

When: I hover on that vesting schedule.

Then : I don't see the hover effect

And : It shows me a normal cursor.

And : rows won’t be clickable.

#### Rule 7 - UX - On hover of Vested share

##### Scenario 7.1 - UX - It shows the Exercise button at the right side.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 50,000  |
| Dec 20, 2021 | -        | 50,000  |
| Dec 20, 2022 | 50,000   | -       |
| Dec 20, 2023 | 50,000   | -       |
| Dec 20, 2024 | 50,000   | -       |
| Dec 20, 2025 | 50,000   | -       |
| Dec 20, 2026 | 50,000   | -       |
| Dec 20, 2027 | 50,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested.

When: I hover on that vested schedule

Then : It shows me `Exercise` button action at the right side.

##### Scenario 7.2 UX - On click of “Exercise” button, opens Exercise dialog.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 50,000  |
| Dec 20, 2021 | -        | 50,000  |
| Dec 20, 2022 | 50,000   | -       |
| Dec 20, 2023 | 50,000   | -       |
| Dec 20, 2024 | 50,000   | -       |
| Dec 20, 2025 | 50,000   | -       |
| Dec 20, 2026 | 50,000   | -       |
| Dec 20, 2027 | 50,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested.

And: on hover of vested records, it shows me the “Exercise” action button at the right side.

When : I click on that action

Then : It opens the “Exercise” dialog.

##### Scenario 7.3 - UX - Doesn't show these “Exercise” action buttons when everything is exercised.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  | Exercised |
| ------------ | -------- | ------- | --------- |
| Dec 20, 2019 | -        | 100,000 | 100,000   |
| Dec 20, 2020 | 50,000   | -       | -         |
| Dec 20, 2021 | 50,000   | -       | -         |
| Dec 20, 2022 | 50,000   | -       | -         |
| Dec 20, 2023 | 50,000   | -       | -         |
| Dec 20, 2024 | 50,000   | -       | -         |
| Dec 20, 2025 | 50,000   | -       | -         |
| Dec 20, 2026 | 50,000   | -       | -         |
| Dec 20, 2027 | 50,000   | -       | -         |

And: In the table above, you can see that the first record of “100,000” shares has been assigned and the exercise on “100,000” shares from “100,000” has been completed.

When: I hover on the first records.

Then : `Exercise` button is not available due to all shares being Exercised.

##### Scenario 7.4 - UX - Show these “Exercise” action buttons when partial exercise is performed.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  | Exercised |
| ------------ | -------- | ------- | --------- |
| Dec 20, 2019 | -        | 100,000 | 50,000    |
| Dec 20, 2020 | 50,000   | -       | -         |
| Dec 20, 2021 | 50,000   | -       | -         |
| Dec 20, 2022 | 50,000   | -       | -         |
| Dec 20, 2023 | 50,000   | -       | -         |
| Dec 20, 2024 | 50,000   | -       | -         |
| Dec 20, 2025 | 50,000   | -       | -         |
| Dec 20, 2026 | 50,000   | -       | -         |
| Dec 20, 2027 | 50,000   | -       | -         |

And: In the table above, you can see that the first record of “100,000” shares has been vested and the partial exercise on “50,000” shares from “100,000” has been completed.

When: I hover on the first records.

Then : “Exercise” button appears. 

#### Rule 8 - UX - On click of vested share row, opens view dialog of Exercise.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 50,000  |
| Dec 20, 2021 | -        | 50,000  |
| Dec 20, 2022 | 50,000   | -       |
| Dec 20, 2023 | 50,000   | -       |
| Dec 20, 2024 | 50,000   | -       |
| Dec 20, 2025 | 50,000   | -       |
| Dec 20, 2026 | 50,000   | -       |
| Dec 20, 2027 | 50,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested..

When : I click on that vested schedule

Then : It opens the “View : Exercise” dialog of that grant.

##### Rule 9 - UX - Exercised column shows total number of Exercised shares for particular vest schedule.

##### Scenario 9.1 - If nothing is exercise then it will show ‘-’.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose one schedule has vested "100,000" shares.

And: No exercise performed on that “100,000” share yet.

When: I open a single grant browse page.

Then : Exercised column will show `-`.

##### Scenario 9.2 - Shows the total number of shares exercised here if all shares are exercised.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose “100,000” shares are vested in a schedule.

And: I have exercised on all vested shares.

When: I see a single grant browse page

Then: Show “100,000” share in the Exercised column.

##### Scenario 9.3 - Shows total of Exercised column as first row at top.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| **Exercised** |
| ------------- |
| **150,000**   |
| 100,000       |
| 50,000        |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of `Exercised` column.

#### Rule 10 - UX - Exercise Price column shows total of exercise price from exercise data.

##### Scenario 10.1 - If nothing is Exercise then it will show ‘-’.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose one schedule has vested "100,000" shares.

And: No exercise performed on that “100,000” share yet.

When: I open a single grant browse page.

Then : Exercise Price column will show `-`.

##### Scenario 10.2 - Show average total of Exercise Price column as first row at top.

Formula of average total of `Exercise Price = ((Total of Shares Held * Exercise Price) + (Total of Shares Sold * Exercise Price)) / (Total of Shares held + Total of Shares Sold)`.

#### Rule 11 - UX - Exercise Gain shows total Exercised gain from exercise data.

##### Scenario 11.1 - If nothing is exercised then it will show ‘-’.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose one schedule has vested "100,000" shares.

And: No exercise performed on that “100,000” share yet.

When: I open a single grant browse page.

Then : Exercise Gain column will show `-`.

##### Scenario 11.2 - Shows total of Exercised Gain column as first row at top.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| **Exercise Gain** |
| ----------------- |
| **150,000**       |
| 100,000           |
| 50,000            |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of `Exercise Gain` column.

#### Rule 12 - UX - Exercisable column shows how many shares are left to exercise.

##### Scenario 12.1 - When all shares are left for exercise, all vested shares will show up in this column.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there is one vesting schedule of “100,000” available in the grant. 

And: No exercise has been performed on it.

When: I see a single grant browse page

Then: It shows me a “100,000” shares in the Exercisable column.

##### Scenario 12.2 - When there isn't any shares left for exercise, it will show ‘-’.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there is one vesting schedule of “100,000” available in the grant. 

And: All shares have been exercised. No shares are left for Exercise.

When: I see a single grant browse page

Then: It will show me a “-” in the Exercisable column.

##### Scenario 12.3 - Shows total of Exercisable column as first row at top

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| Exercisable |
| ----------- |
| **150,000** |
| 100,000     |
| 50,000      |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of `Exercisable` column.

#### Rule 13 - UX - Exercise Cost column shows the cost of exercising the shares. “Exercise Cost” = “Exercisable” * “Exercise price of Grant”

##### Scenario 13.1

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose that Exercisable value of that Grant is “10,000” and Exercise Price of Grant is “15.00”. 

When: I see a single grant browse page

Then: Shows “150,000” value in the Exercise Cost.

##### Scenario 13.2 - When Exercisable shares are 0 then Exercise cost is also 0.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose that Exercisable value of that Grant is “0” and Exercise Price of Grant is “15.00”. 

When: I see a single grant browse page

Then: Shows “-” in the Exercise Cost.

##### Scenario 13.3 - Shows total of Exercise Cost column as first row at top.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| Exercise Cost |
| ------------- |
| **150,000**   |
| 100,000       |
| 50,000        |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of ‘Exercise Cost’ column.

#### Rule 14 - UX - “Vested Value” = “Exercisable” * “Current Stock Price of the Incentive Stock”.

##### Scenario 14.1

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose that Exercisable value of that Grant is “100,000” and Current Stock price of that stock is “15.00”. 

When: I see a single grant browse page

Then: Shows “150,000” value in the Exercise Cost.

##### Scenario 14.2 - Shows total of Vested Value column as first row at top.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| Vested Value |
| ------------ |
| **150,000**  |
| 100,000      |
| 50,000       |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of ‘Vested Value’ column

#### Rule 15 - UX - “Vested Gain” = “Vested Value” - “Exercise Cost”

##### Scenario 15.1

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule.

And: Suppose that the Vested value of that Grant is “100,000” and Exercise cost of that grant is “15,000”. 

When: I see a single grant browse page

Then: Shows “85,000” value in the Exercise Cost.

##### Scenario 15.2 - Shows total of Vested Value column as first row at top.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the NQSO.

And : That grant has some vesting schedule..

And: Suppose that there are 2 records “100,000” and “50,000” available in the grant. 

| Vested Gain |
| ----------- |
| **150,000** |
| 100,000     |
| 50,000      |

When: I see a single grant browse page

Then: Shows a total of  “150,000” shares in the top of ‘Vested gain’ column.

#### Rule 26:  - UX - On click of Grant, show details of its Vesting schedule. 

| Type |
| ---- |
| RSU  |
| RSA  |

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

When: I click on that grant.

Then : That grant is expanded and shows details of its vesting schedule.

#### Rule 27- UX - Records are sorted in ascending order of Vest Date.

| Type |
| ---- |
| RSU  |
| RSA  |

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the {Type}.

And : That grant has some vesting schedule as per the following date.

| Vest Date    |
| ------------ |
| Dec 20, 2019 |
| Dec 20, 2020 |
| Dec 20, 2021 |
| Dec 20, 2022 |
| Dec 20, 2023 |
| Dec 20, 2024 |
| Dec 20, 2025 |
| Dec 20, 2026 |
| Dec 20, 2027 |

When: I see this grant in browse single grant page

And : Observe the records under that grant

Then : records are sorted in the descending order of vest date as follows.

| Vest Date    |
| ------------ |
| Dec 20, 2019 |
| Dec 20, 2020 |
| Dec 20, 2021 |
| Dec 20, 2022 |
| Dec 20, 2023 |
| Dec 20, 2024 |
| Dec 20, 2025 |
| Dec 20, 2026 |
| Dec 20, 2027 |

#### Rule 28 - UX - If Vest Date is not passed, means it's Unvested. Those shares are shown in the Unvested column.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And: As per the table below, not a single grant schedule has passed. So all the shares will appear in the unvested column.

| Vest Date    | Unvested | Vested |
| ------------ | -------- | ------ |
| Dec 20, 2019 | 100,000  | -      |
| Dec 20, 2020 | 25,000   | -      |
| Dec 20, 2021 | 25,000   | -      |
| Dec 20, 2022 | 25,000   | -      |
| Dec 20, 2023 | 25,000   | -      |
| Dec 20, 2024 | 25,000   | -      |
| Dec 20, 2025 | 25,000   | -      |
| Dec 20, 2026 | 25,000   | -      |
| Dec 20, 2027 | 25,000   | -      |

When: I see this grant in browse any single grant page

Then : It shows me the following table.

| Vest Date    | Unvested | Vested |
| ------------ | -------- | ------ |
| Dec 20, 2019 | 100,000  | -      |
| Dec 20, 2020 | 25,000   | -      |
| Dec 20, 2021 | 25,000   | -      |
| Dec 20, 2022 | 25,000   | -      |
| Dec 20, 2023 | 25,000   | -      |
| Dec 20, 2024 | 25,000   | -      |
| Dec 20, 2025 | 25,000   | -      |
| Dec 20, 2026 | 25,000   | -      |
| Dec 20, 2027 | 25,000   | -      |

#### Rule 29 - UX - When shares are Unvested, other columns except unvested will be always blank.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And: Not a single share has been vested in it.

When: I see this grant in browse any single grant page

Then : There I will see a '-' in a column other than Unvested.

#### Rule 30: If the Vest Date is passed, means it's vested. Those shares are shown in the Vested column.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And: As per the table shown below, the vest date of some shares has passed. So it is shown in the share vested column.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 25,000  |
| Dec 20, 2021 | -        | 25,000  |
| Dec 20, 2022 | -        | 25,000  |
| Dec 20, 2023 | 25,000   | -       |
| Dec 20, 2024 | 25,000   | -       |
| Dec 20, 2025 | 25,000   | -       |
| Dec 20, 2026 | 25,000   | -       |
| Dec 20, 2027 | 25,000   | -       |

When: I see this grant in browse any single grant page

Then : It shows me the following table.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 25,000  |
| Dec 20, 2021 | -        | 25,000  |
| Dec 20, 2022 | -        | 25,000  |
| Dec 20, 2023 | 25,000   | -       |
| Dec 20, 2024 | 25,000   | -       |
| Dec 20, 2025 | 25,000   | -       |
| Dec 20, 2026 | 25,000   | -       |
| Dec 20, 2027 | 25,000   | -       |

#### Rule 31- UX - Unvested schedule rows won't be clickable and that's why it's hover effect won't be available. 

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And: All shares are unvested in this grant.

When: I hover on that vesting schedule.

Then : I don't see the hover effect

And : It shows me a normal cursor.

And : rows won’t be clickable.

#### Rule 32 - UX - On hover of Vested share

##### Scenario 32.1 - UX - It shows the Exercise button at the right side.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 25,000  |
| Dec 20, 2021 | -        | 25,000  |
| Dec 20, 2022 | 25,000   | -       |
| Dec 20, 2023 | 25,000   | -       |
| Dec 20, 2024 | 25,000   | -       |
| Dec 20, 2025 | 25,000   | -       |
| Dec 20, 2026 | 25,000   | -       |
| Dec 20, 2027 | 25,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested.

When: I hover on that vested schedule

Then : It shows me the “Vested Details” action button at the right side.

##### Scenario 32.2 UX - On click of “Vested Details” button, opens Add Vested details dialog.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 25,000  |
| Dec 20, 2021 | -        | 25,000  |
| Dec 20, 2022 | 25,000   | -       |
| Dec 20, 2023 | 25,000   | -       |
| Dec 20, 2024 | 25,000   | -       |
| Dec 20, 2025 | 25,000   | -       |
| Dec 20, 2026 | 25,000   | -       |
| Dec 20, 2027 | 25,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested..

And: on hover of vested records, it shows me the “Vested Details” action button at the right side.

When : I click on that button

Then : It opens the “Add Vested Details” dialog.

##### Scenario 32.3 - UX - Doesn't show these “Vested Details” action buttons when vested details are added for all shares.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSA.

And : That grant has some vesting schedule.

And: I have added vested details for this.

And : Price at Vest of this vested details is “$12”

| Vest Date    | Unvested | Vested  | Vested Value |
| ------------ | -------- | ------- | ------------ |
| Dec 20, 2019 | -        | 100,000 | 1,200,000    |
| Dec 20, 2020 | 25,000   | -       | -            |
| Dec 20, 2021 | 25,000   | -       | -            |
| Dec 20, 2022 | 25,000   | -       | -            |
| Dec 20, 2023 | 25,000   | -       | -            |
| Dec 20, 2024 | 25,000   | -       | -            |
| Dec 20, 2025 | 25,000   | -       | -            |
| Dec 20, 2026 | 25,000   | -       | -            |
| Dec 20, 2027 | 25,000   | -       | -            |

And: In the table above, you can see that the first record of “100,000” shares has been vested and I have added vested details for all shares.

When: I hover on the first records.

Then : “Vested Details” button is not available due to all shares being completed.

##### Scenario 32.4 - UX - Show these “Vested details” action buttons when partial vested details are added.

Given: I have added incentive stock to Microsoft Public company.

And : This stock has one grant in the RSA.

And : That grant has some vesting schedule.

And: I have added vested details for this.

And : Price at Vest of this vested details is “$12”

| Vest Date    | Unvested | Vested  | Vested Value |
| ------------ | -------- | ------- | ------------ |
| Dec 20, 2019 | -        | 100,000 | 600,000      |
| Dec 20, 2020 | 25,000   | -       | -            |
| Dec 20, 2021 | 25,000   | -       | -            |
| Dec 20, 2022 | 25,000   | -       | -            |
| Dec 20, 2023 | 25,000   | -       | -            |
| Dec 20, 2024 | 25,000   | -       | -            |
| Dec 20, 2025 | 25,000   | -       | -            |
| Dec 20, 2026 | 25,000   | -       | -            |
| Dec 20, 2027 | 25,000   | -       | -            |

And: In the table above, you can see that the first record of “100,000” shares has been vested

And: I added a partial vested details of 50,000 share

And : The Vested Value of that vested details is “600,000”.

When: I hover on the first records.

Then : “Vested Details” button appears. 

#### Rule 33 - UX - On click of vested share row, opens view dialog of Vested Details.

Given: I have added incentive stock of Microsoft Public company.

And : This stock has one grant in the RSU.

And : That grant has some vesting schedule.

| Vest Date    | Unvested | Vested  |
| ------------ | -------- | ------- |
| Dec 20, 2019 | -        | 100,000 |
| Dec 20, 2020 | -        | 25,000  |
| Dec 20, 2021 | -        | 25,000  |
| Dec 20, 2022 | 25,000   | -       |
| Dec 20, 2023 | 25,000   | -       |
| Dec 20, 2024 | 25,000   | -       |
| Dec 20, 2025 | 25,000   | -       |
| Dec 20, 2026 | 25,000   | -       |
| Dec 20, 2027 | 25,000   | -       |

And: In the above table, you can see that the first 3 schedules are vested..

When : I click on that vested schedule

Then : It opens the “View : Vested Details” dialog of that grant.