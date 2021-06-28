# Add/Edit/Delete Prior year

## Why we allow to enter prior year data manually?

To show the correct Remaining Lifetime and GST Exemption amount on summary pages for any particular Individual, Athena should have all lifetime 709 tax return data & Gifts data available in Athena. 709 return pulls total gift amount data from Gifting page. So indirectly it means that system should have all of the gifts given by Individual during his lifetime entered in to Gifting module to reflect correct figure on this page. This can become very painful work. Athena had Gifts data available for many individual, but its not like that those data are for the whole lifetime.

So we have given one feature to create manual entry (Without creating any Gift) for any particular year in Lifetime exemption ledger.

This feature can also be used for data entry of any new client of Clarius group. Clarius team don't have to create gifts of old years. They can directly enter data manually from this page using old tax returns (from accountant) to reflect correct figures on this page.

Note: We have added this feature in Athena in July 2021

## Add summary record for prior year

- System allows to enter prior year record for both - Lifetime and GST
- Does not allow to enter record before 1980.
- Does not allow to enter GST details before 1985.
- Does not allow to enter future year record.
- System does not allow to enter record for the year which is already exists in ledger.
- System always ensures that GST gift amount is less than Annual Gift amount (Because GST is subset of Lifetime).
- Suppose one Individual has no Gifts given ever. Current year is 2021. So when Clarius user adds prior year record for 2016, system auto generates records in summary tab from 2016 to 2021. So after adding If user wants to add manual data for 2017, user can not add new record. But 2017 row is already generated in summary tab. So user can edit it and 

### UX Rule

- Lifetime & GST Summary shows one ADD button. On click of it, opens Add dialog of Prior year.
- Year
  - Its year input and mandatory field.
  - Its value always greater than or equal to 1980.
  - Future year is not allowed to enter.
  - Same year isn't allowed.
- Lifetime summary details

  - Beginning Lifetime Exemption

    - When a user enters a year in the `Year` field then update this header name to `Beginning Lifetime Exemption ({Year})`.
    - Based on the selected Year, data are pulled from the Individual's ledger.
    - Decimal input is allowed.

  - Annual Gift Amount
    - Its amount input field. Decimal is allowed.
    - It's a mandatory field.
  - Annual Exemption
    - Its amount input field. Decimal is allowed. It’s a mandatory field.
    - Its value should be always lower than `Annual Gift Amount`.
  - Lifetime Exemption Used
    - Its calculated field. Decimal is allowed.
    - `Lifetime Exemption Used` = `Annual Gift Amount` - `Annual Exclusion`
  - Remaining Lifetime Exemption
    - When a user enters a year in the Year Input field then update this header name to `Beginning Lifetime Exemption ({Year})`.
    - It's a calculated field.
    - `Remaining Lifetime Exemption(1998)` = `Beginning Lifetime Exemption(1998)` - `Lifetime Exemption Used`
    - If the value of `Remaining Lifetime Exemption` is less than 0, show only 0 in this field. (Do not show value with `-` sign)
  - Tax Paid
    - Its amount input field. Decimal is allowed.
- GST summary information

  - Beginning GST Exemption

    - When a user enters a year in the `Year` field then update this header name to `Beginning Lifetime Exemption ({Year})`.
    - Based on the selected Year, data are pulled from the Individual's ledger.
    - Decimal input is allowed.

  - Annual GST Gifts
    - Its amount input field. Decimal is allowed.
    - It's a mandatory field.
  - Annual Exclusion
    - Its amount input field. Decimal is allowed. It’s a mandatory field.
    - Its value should be always lower than `Annual Gift Amount`.
  - GST Exemption Used
    - Its calculated field. Decimal is allowed.
    - `GST Exemption Used` = `Annual Gift Amount` - `Annual Exclusion]`
  - Remaining Lifetime Exemption
    - When a user enters a year in the Year Input field then update this header name to `Beginning Lifetime Exemption ({Year})`.
    - It's a calculated field.
    - `Remaining GST Exemption(1998)` = `Beginning GST Exemption(1998)` - `Lifetime GST Used`
    - If the value of `Remaining GST Exemption` is less than 0, show only 0 in this field. (Do not show value with `-` sign)
  - Tax Paid
    - Its amount input field. Decimal is allowed.
- Disable `GST Summary Information` section when a user enters a year from 1980 to 1984. For this, system shows proper warning message in that section.
- When user enters a value in the `Annual GST Gifts`, system automatically prefills that value in the `Annual Gift Amount` field if that field is blank. If value is already available in `Annual Gift Amount` field, system doesn't change it. 
- On SAVE action, show loader in the dialog until calculation is not completed from server side.
- Error cases
  - When user enters same year in `Year Input` field then system shows an error message.
  - When `Annual Gift Amount` is lower than `Annual GST Gifts` then system shows an error message.
  - When `Annual Exclusion`  of Lifetime detail is greater than `Annual Gift Amount` then system shows an error message.
  - When `Annual Exclusion`  of GST details is greater than `Annual GST Gifts` then system shows an error message.
  - When user enters a year which is lower than 1980 then system shows an error message. 
  - When user enters a future year in the `Year` field then system shows an error message.

### UI Rule

Mockup //TODO

- Warning message for GST Summary section : `GST Gifts before 1985 is not allowed`.
- Error message for `Annual GST Gifts` : `Should be <= Annual Gift Amount`.
- Error message for same year: `Summary record of same year already exits`.
- Error message for `Lifetime Summary Information`  when `Annual Exclusion` is greater than `Annual Gift Amount` : `should be <= Annual Gift Amount`.
- Error message for `GST Summary Information`  when `Annual Exclusion` is greater than `Annual GST Gifts` : `should be <= Annual GST Gifts`.
- Error message when Year is lower than 1980 : `Summary records before 1980 is not allowed`
- Error message when future year is added: `Future year is not allowed`.



### Scenario

##### Rule 1 UX- Summary records before `1980` is not allowed.

Given: I have Add Prior summary dialog open

When: I enter a `1975` in the `Year` input field.

Then: `Year` field shows error about it should not be lower than `1980`.



##### Rule 2: UX- Future Year is not allowed.

Given: I have Add Prior summary dialog open

When: I enter a `2035` in the `Year` input field.

Then: `Year` field shows error about it should not be greater than `Current Year`.



##### Rule 3: UX- Disable the `GST Summary Information` section when a user enters a year from 1980 to 1984.

###### Scenario 2.1

Given: I have Add Prior Summary dialog open

When: I enter a `1981` in the `Year` input field.

Then: Disable the `GST Summary Information` section. (Because GST gifts before 1985 is not allowed).

###### Scenario 2.2 UX- Show proper warning message in header while `GST Summary` section is disable.

Given: I have Add Prior Summary dialog open

When: I enter a `1981` in the `Year` input field.

Then: Disable the `GST Summary Information` section.

And: Shows proper warning message in the header.



##### Rule 4: UX- When user enter a year, system will auto generate count of `Beginning Lifetime Exemption` or `Beginning GST Exemption`.

Given: I have Add Prior Summary dialog open

When: I enter a `1989` in the `Year` input field.

Then: `Beginning Lifetime Exemption` or `Beginning GST Exemption` field will pulled the value from the master ledger.



##### Rule 5: UX- When a user enters a year then update `Beginning Lifetime Exemption` or `Beginning GST Exemption` name to `Beginning Lifetime Exemption (Year)` or `Beginning GST Exemption (Year)`.

Given: I have Add Prior Summary dialog open

When: I enter a `1989` in the `Year` input field.

Then: Change the label name from `Beginning Lifetime Exemption` to `Beginning Lifetime Exemption (1989)`

And: Change the label name from`Beginning GST Exemption` to `Beginning GST Exemption (1989)`.



##### Rule 6: UX- When a user enters a year then update `Remaining Lifetime Exemption` or `Remaining GST Exemption` name to `Beginning Lifetime Exemption (Year)` or `Beginning GST Exemption (Year)`.

Given: I have Add Prior Summary dialog open

When: I enter a `1989` in the `Year` input field.

Then: Change the label name from `Remaining Lifetime Exemption` to `Remaining Lifetime Exemption (1989)`

And: Change the label name from `Remaining GST Exemption` to `Remaining GST Exemption (1989)`.



##### Rule 7: `Annual Exclusion` is always lower than `Annual Gift Amount` or `Annual GST Gifts`

###### Scenario 7.1

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual Gift Amount` is `$ 50,000`.

When: I enter a `Annual Exclusion` is `$ 70,000`

Then:  `Annual Exclusion` field shows error about it should not be greater than `Annual Gift Amount`.

###### Scenario 7.2

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual GST Gifts` is `$ 50,000`.

When: I enter a `Annual Exclusion` is `$ 70,000`

Then:  `Annual Exclusion` field shows error about it should not be greater than `Annual GST Gifts`.



##### Rule 8 UX- `Lifetime Exemption Used` = `Annual Gift Amount` - `Annual Exclusion`.

###### Scenario 8.1

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field

And: I have entered `Annual Gift Amount` is `$ 50,000`.

When: I enter a `Annual Exclusion` is `$ 20,000`

Then: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

###### Scenario 8.2

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual Gift Amount` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will show the value of `$ 30,000`.

When: I changed `Annual Exclusion` from `20,000` to `30,000`

Then:  `Lifetime Exemption Used` field will shows the value of `$ 20,000`.

###### Scenario 8.3

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual Gift Amount` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will show the value of `$ 30,000`.

When: I changed `Annual Gift Amount` from `50,000` to `60,000`

Then:  `Lifetime Exemption Used` field will shows the value of `$ 40,000`.



##### Rule 9 UX- `Lifetime Exemption Used` = `Annual GST Gifts` - `Annual Exclusion`.

###### Scenario 9.1

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field

And: I have entered `Annual GST Gifts` is `$ 50,000`.

When: I enter a `Annual Exclusion` is `$ 20,000`

Then: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

###### Scenario 9.2

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual GST Gifts` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will show the value of `$ 30,000`.

When: I changed `Annual Exclusion` from `20,000` to `30,000`

Then:  `Lifetime Exemption Used` field will shows the value of `$ 20,000`.

###### Scenario 9.3

Given: I have Add Prior Summary dialog open

And: I enter a `1989` in the `Year` input field.

And: I have entered `Annual GST Gifts` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will show the value of `$ 30,000`.

When: I changed `Annual GST Gifts` from `50,000` to `60,000`

Then:  `Lifetime Exemption Used` field will shows the value of `$ 40,000`.



##### Rule 10: UX- `Remaining Lifetime Exemption` = `Beginning Lifetime Exemption` - `Lifetime Exemption Used`.

###### Scenario 10.1

Given: I have Add Prior Summary dialog open

And: I enter a `1980` in the `Year` input field

And: System shows `Beginning Lifetime Exemption` is `161,000`

And: I have entered `Annual GST Gifts` is `$ 50,000`.

When: I enter `Annual Exclusion` is `$ 20,000`

Then: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

And: `Remaining Lifetime Exemption` field will shows the value of `$ 131,000`.

###### Scenario 10.2

Given: I have Add Prior Summary dialog open

And: I enter a `1980` in the `Year` input field

And: System shows `Beginning Lifetime Exemption` is `161,000`

And: I have entered `Annual GST Gifts` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

And: `Remaining Lifetime Exemption` field will shows the value of `$ 131,000`.`

When: I changed `Annual GST Gifts`  to `70,000`.

Then: `Lifetime Exemption Used` field will shows the value of `$ 50,000`

Then: `Remaining Lifetime Exemption` field will shows the value of `$ 111,000`.

###### Scenario 10.3

Given: I have Add Prior Summary dialog open

And: I enter a `1980` in the `Year` input field

And: System shows `Beginning Lifetime Exemption` is `161,000`

And: I have entered `Annual GST Gifts` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

And: `Remaining Lifetime Exemption` field will shows the value of `$ 131,000`.

When: I changed `Annual Exclusion`  to `30,000`.

Then: `Lifetime Exemption Used` field will shows the value of `$ 20,000`

Then: `Remaining Lifetime Exemption` field will shows the value of `$ 141,000`.

###### Scenario 10.4

Given: I have Add Prior Summary dialog open

And: I enter a `1980` in the `Year` input field

And: System shows `Beginning Lifetime Exemption` is `161,000`

And: I have entered `Annual GST Gifts` is `$ 50,000`.

And: I have entered `Annual Exclusion` is `$ 20,000`

And: `Lifetime Exemption Used` field will shows the value of `$ 30,000`.

And: `Remaining Lifetime Exemption` field will shows the value of `$ 131,000`.

When: I changed year from `1980` to `1981`.

And: System shows `Beginning Lifetime Exemption` is `175,000`.

Then: `Lifetime Exemption Used` field will shows the value of `$ 30,000`

Then: `Remaining Lifetime Exemption` field will shows the value of `$ 145,000`.



##### Rule 11 UX- When a user enters a value in the `Annual GST Gifts`, system automatically prefills that value in the `Annual Gift Amount` field if that field is blank.

###### Scenario 11.1

Given: I have Add Prior dialog open

And: `Annual Gift Amount` field is blank.

When: I enter the amount of `15000` in the `Annual GST Gifts` field.

Then: System automatically prefills `15000` in the `Annual Gift Amount`.

###### Scenario 11.2

Given: I have Add Prior dialog open

And: I have entered `Annual Gift Amount` is `18000`.

When: I enter the amount of `14000` in the `Annual GST Gifts`.

Then: The system doesn't override the value of `Annual Gift Amount`.

###### Scenario 11.3

Given: I have Add Prior dialog open

And: I have entered `Annual GST Gifts` is `15,000`.

And: System auto prefills `15,000` in the `Annual Gift Amount`.

When: I manually change the `Annual Gift Amount` to `$ 0`.

And: I manually change the `Annual GST Gifts` from`15000` to `20000`

Then: System automatically prefills `20000` in the `Annual Gift Amount`.

###### Scenario 11.4

Given: I have Add Prior dialog open

And: I have entered `Annual GST Gifts` is `15,000`.

And: System auto prefills `15,000` in the `Annual Gift Amount`.

When: I manually change the `Annual GST Gifts ` to `$ 0`.

Then: The system doesn't override the value of `Annual Gift Amount`.





## Edit Summary record

### System Rule

- Applicable only for `Manual` and `Auto` type records.
- Can be editable anytime.
- If the user edits the `Auto` type of records and adds a summary to it, the type will change from `Auto` to `Manual`.

### UX Rule

- Year can't be editable. (This decision was taken just to decrease the development complexity)

### UI Rule

Mockup //TODO

### Case 1

- For Ex. If a new user `Ajay Dhameliya` is connected to the Athena Family Office from 2021. Now the user has given a gift from 2015 to 2019. So we will add manual records for 2015. The system will now auto-add records from 2015 to 2021. The type of record for 2015 will be `Manual` and record for 2016 to 2021 will be `Auto`. User can not able to add records for 2016 year because it is already added to the summary tab.
- If the user wants to add a summary for 2016, he can add a summary by editing the 2016 records. Now if the user manually edit a summary for 2016, it will change the type of records from `Auto` to `Manual`.



## Delete Summary record of prior year

### System Rule

- Applicable only for first records of Manual or Auto type.
- On delete, both type - Lifetime and GST records are deleted. That's whey when user deletes the first record from one tab (Lifetime Summary tab) then first record will also be removed from the second tab (GST tab).

### UX Rule

- On click, open delete confirmation dialog.
- On confirmation, show loader in the dialog until recalculation is completed from server side
- There is one case in `GST Summary` tab when first records of the GST summary tab can not be deleted. 
  - Suppose user has added prior year summary records of 1980. So system will auto generate summary from 1980 to 2021 in the Lifetime Summary tab and 1985 to 2021 in the GST Summary tab.
  - When user deletes the first record of 1985 from the GST Summary tab then system doesn't allow to delete it because Lifetime tab has previous year records.  (Here 1985 is first record on UI, actually first record is 1980)

### UI Rule

Mockup of Delete confirmation dialog //TODO

Mockup of Delete Not Possible //TODO

