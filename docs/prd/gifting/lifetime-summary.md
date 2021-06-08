# Lifetime Summary

## Overview

This page shows the remaining Lifetime exemption limit for any particular Individual. Using this page Clarius team can know how much limit is available for any Individual

#### What is Annual Exclusion

For the tax years 2020 and 2021, the annual exclusion is $15,000. Individuals won’t have to file a gift tax return until they gift at least that much to another individual in one tax year. For example, if any Individual gift someone $20,000, that Individual will have to file a gift tax return for $5,000, which is the amount over the annual exclusion. Filing a gift tax return doesn’t mean Individual have to pay gift taxes. 

The concept of "Annual exclusion" is much more complicated with the GST gifts, so we will not have Athena calculate this.  System has only a data field at 709 tax return that Clarius team enters after the accountants file the gift tax return.

#### What is Lifetime Exemption

Starting in 2020, the lifetime gift tax exemption is $11.58 million. This means that Individual can give up to $11.58 million in gifts over the course of your lifetime without ever having to pay gift tax on it. 

For Joints, both Individual get the $11.58 million exemption. It means that both Individual can give away a total of $23.16 million before paying the gift tax.

For example, if Individual gifted someone $20,000, He has to file a gift tax return for $5,000, the amount over the annual exclusion, but that $5,000 would then also count toward lifetime exclusion.  So if he has not used that limit yet, he may not have to pay taxes on that money yet.

See below table for Master ledger of Lifetime exemption // TODO



## How it works

Athena maintains Lifetime exemption ledger for each Individual separately. To maintain this ledger, it uses 709 (Gift tax return) data. 709 return (Gift Tax Return) has data about Gift made for a particular year, Annual exclusion & Tax paid information.

Using this tax return data Athena maintains lifetime exemption ledger for each Individual as shown in below table // TODO



## Q & A

### Why Athena allows to enter prior year data manually?

To show the correct Remaining Lifetime Excemption amount on this page for any particular Individual, Athena should have all liftieme 709 tax return data available in Athena. 709 return pulls total gift amount data from Gifting page. So indirectly it means that system should have all of the gifts given by Individual during his lifetime entered in to Gifting module to reflect correct figure on this apge. This can become very painful work. Athena had Gifts data available for many individual, but its not like that those data are for the whole lifetime.

So we have given one feature to create manual entry (Without creating any Gift) for any particular year in Lifetime exemption ledger.

This feature can also be used for data entry of any new client of Clarius group. Clarius team don't have to create gifts of old years. They can directly enter data from this page from old tax returns to reflect correct figure on this page.

Note: We have built this feature in June 2021 in Athena. 

## Browse lifetime Exemption Summary 

- Shows the records of lowest year to current year

## Add Lifetime summary for prior year

## Edit Lifetime Summary

## Delete Lifetime Summary