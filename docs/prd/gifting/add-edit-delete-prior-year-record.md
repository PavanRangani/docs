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
- Error message for `Annual GST Gifts` : `Should be <=Annual Gift Amount`.

- Error message for same year: `Summary record of same year already exits`.
- Error message for `Lifetime Summary Information`  when `Annual Exclusion` is greater than `Annual Gift Amount` : `should be <= Annual Gift Amount`.
- Error message for `GST Summary Information`  when `Annual Exclusion` is greater than `Annual GST Gifts` : `should be <= Annual GST Gifts`.
- Error message when Year is lower than 1980 : `Summary records before 1980 is not allowed`
- Error message when future year is added: `Future year is not allowed`.



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

