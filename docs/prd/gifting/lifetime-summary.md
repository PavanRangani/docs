# Lifetime Summary

## Overview

This page shows the remaining Lifetime exemption limit for any particular Individual. Using this page Clarius team can know how much limit is available for any Individual

#### What is Annual Exclusion

For the tax years 2020 and 2021, the annual exclusion is $15,000. Individuals won’t have to file a gift tax return until they gift at least that much to another individual in one tax year. For example, if any Individual gift someone $20,000, that Individual will have to file a gift tax return for $5,000, which is the amount over the annual exclusion. Filing a gift tax return doesn’t mean Individual have to pay gift taxes. 

The concept of "Annual exclusion" is much more complicated with the GST gifts, so we will not have Athena calculate this.  System has only a data field at 709 tax return that Clarius team enters after the accountants file the gift tax return.

#### What is Lifetime Exemption

Starting in 2020, the lifetime gift tax exemption is $11.58 million. This means that Individual can give up to $11.58 million in gifts over the course of your lifetime without ever having to pay gift tax on it. Government can give increase for any year. So this figure can be increased over time.

For Joints, both Individual get the $11.58 million exemption. It means that both Individual can give away a total of $23.16 million before paying the gift tax.

For example, if Individual gifted someone $20,000, He has to file a gift tax return for $5,000, the amount over the annual exclusion, but that $5,000 would then also count toward lifetime exclusion.  So if he has not used that limit yet, he may not have to pay taxes on that money yet.

See below table for Master ledger of Lifetime exemption // TODO - Show only 3 columns

​	Year, Annual Increase, Statutory Lifetime Gift Tax Exemption

## How it works

Athena maintains Lifetime exemption ledger for each Individual separately. 709 return (Gift Tax Return) has data about Gift made for a particular year, Annual exclusion & Tax paid information.

Using this tax return data Athena maintains lifetime exemption ledger for each Individual as shown in this Excel // TODO



## Q & A

### Why Athena allows to enter prior year data manually?

To show the correct Remaining Lifetime Excemption amount on this page for any particular Individual, Athena should have all liftieme 709 tax return data available in Athena. 709 return pulls total gift amount data from Gifting page. So indirectly it means that system should have all of the gifts given by Individual during his lifetime entered in to Gifting module to reflect correct figure on this apge. This can become very painful work. Athena had Gifts data available for many individual, but its not like that those data are for the whole lifetime.

So we have given one feature to create manual entry (Without creating any Gift) for any particular year in Lifetime exemption ledger.

This feature can also be used for data entry of any new client of Clarius group. Clarius team don't have to create gifts of old years. They can directly enter data manually from this page using old tax returns (from accountant) to reflect correct figures on this page.

Note: We have added this feature in Athena in June 2021

## Browse lifetime Exemption Summary 

### UX 

- Shows lifetime Exemption summary of particular Individual on year over year basis using 709 Tax return data or Manually entered data.
- For Joint legal entity, this page shows data for both individuals.
- It shows the records from smallest year to current year in ascending order
  - For e.g If current year is 2021 and smallest year in which Gift available is 2015, then this page will show records from 2015 to 2021
- When there isn't any gifts available for any year, shows only one record for current year showing Remaining Lifetime exemption (This is just to show the Remaining Exemption figure. Otherwise for such Individual there isn't any way to see Remaining Exemption)
  - For e.g If current year is 2021 and this Individual don't have any gifts available in any year, then this page will show only one record for 2021
- For each year, this page shows following columns
  - Year
  - Annual Increase
    - Annual increase by government for this year. 
  - Statutory Lifetime Gift Tax Exemption
    - Total available exemption by this year
  - Beginning Lifetime Exemption
  - Annual Gift Amount
  - Annual Exclusion
    - Pulled from Tax Return for the same year.
  - Lifetime Exemption Used
  - Remaining Lifetime Exemption
  - Tax Paid
    - Pulled “Tax Due” value for the same year.
- From above columns, first 3 columns `Year, Annual Increase & Statutory Lifetime Gift Tax Exemption`  shows figures from Master ledger. All other column values are shown from either Tax return or Manual entry.
- Show "-" if data is not available in a particular column.
- When no gifts are available for any year, then show this “No Gift tax returns have been filed for {Year} year" message in the Annual Gift Amount column
  - for e.g.  Current year is 2021 and smallest year in which Gift available is 2015. User has gifts availble in 2015, 2016, 2017 & 2020.  This page will show records from 2015 to 2021. On this page for the years 2018, 2019 & 2021, it will show message like `No Gift tax returns have been filed for 2018 year`

#### Mockups

- No Gifts available for Individual
- Page with some records available

## Add Lifetime summary for prior year

## Edit Lifetime Summary

## Delete Lifetime Summary





# TODO

- GST summary ma su lakhvu ee plan kari levu
- Add / Edit Gift dialog restrictions
  - GST 
  - Valuation
- 709 Tax return 
  - Updates in `Summary Information for Form 709` section
  - validation for filing