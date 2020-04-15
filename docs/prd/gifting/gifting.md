# Gifting

## Entity

|                                 | Field Name           | Description                                                  |
| ------------------------------- | -------------------- | ------------------------------------------------------------ |
|                                 | Gift Name*           | Free form text field                                         |
|                                 | Giftor               | Individual or Joint                                          |
|                                 | Recipient*           | Autocomplete of Contact, Individuals, Partnership and Trust  |
|                                 | Gift Type*           | Select input. Possible values: Cash (Default), Private Stock, Public Stock, Partnership Units, Investment Fund |
| Common fields for any Gift Type |                      |                                                              |
|                                 | Date*                | Date input. Default shows current date                       |
|                                 | Fair Market Value*   | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Gift Tax Value*      | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Notes                | Multiline text field                                         |
| Gift Type = `Private Stock`     |                      |                                                              |
|                                 | Stock Name*          | Stock dropdown. Shows stock in alphabetical order            |
|                                 | Stock Basis*         | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | No of Shares*        | Number input field. Decimal is allowed.                      |
|                                 | Average Price        | Calculated field from `Low Price` and `High Price`           |
|                                 | Low Price            | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | High Price           | Currency input. Default value is $0.00. Decimal is allowed   |
| Gift Type = `Public Stock`      |                      |                                                              |
|                                 | Stock Name*          | Stock dropdown. Shows stock in alphabetical order            |
|                                 | Stock Basis*         | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | No of Shares*        | Number input field. Decimal is allowed.                      |
|                                 | Average Price        | Calculated field from `Low Price` and `High Price`           |
|                                 | Low Price            | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | High Price           | Currency input. Default value is $0.00. Decimal is allowed   |
|                                 | Purchase Date        | Date input. Any date is allowed here.                        |
|                                 | Stock Exchange       | Company autocomplete                                         |
| Gift Type = `Partnership Units` |                      |                                                              |
|                                 | ‘Company’            | Company autocomplete                                         |
|                                 | ‘Units’              | Number input field. Decimal is allowed.                      |
|                                 | ‘Percentage’         | Flag. If true Units will be in %, if false Units will be in number |
| Gift Type = `Investment Fund`   |                      |                                                              |
|                                 | Investment Fund Name | Free form text input field                                   |
|                                 |                      |                                                              |



## System requirement

### Add

- Only Individual or Joint can give gift. Gift can be given to legal entity of any family.
- Gift can go to Individual, Joint, Partnership and Trust
- When `Giftor` or `Recipient` is `Individual`, 100% will be allocated to both side (`Giftor` or `Recipient` side)
- When `Giftor` or `Recipient` is `Joint`, by default system allocates 50-50 to each `Individual` . System allows to change this allocation at either side (`Giftor` or `Recipient` side)

#### `Recipient` is `Partnership`

- gift will be given to the owners of that partnership. Allocation will be done based on the % share of  current owners. 

- Partnership can also have another Partnership  as owner. In this case, System retrieves owners recursively and allocates gift based on their % share.

  - For e.g. We have two Partnerships. P1 & P2.  P1 has two owners: Chirag (50%) & P2(50%). P2 has also 3 owners: Ajay (40%), Chirag(30%), Chetan (30%)

  -  When gift of 25000 given to P1, it will be allocated to Ajay, Chetan and Chirag as follows
  
    ​	

    | Owners | Gift amount they will receive                                |
  | ------ | ------------------------------------------------------------ |
    | Chirag | 16250 ( `12500 (50% from P1) + 3750 (30% of 12500 from P2))` |
  | Chetan | 3750 (30% of 12500 from P2)                                  |
    | Ajay   | 5000 (40% of 12500 from P2)                                  |
  
  - If the gift is going to a Partnership, the percentage distribution is determined at the time the gift is made. If the ownership changes subsequently, the original Gift’s distribution is not changed.

#### `Receipient` is Trust

- There can be two possibilities
  - Trust is Crummey Trust
  - Trust is not Crummey Trust
- When Trust is not Crummey Trust
  - Gift given to trust will be allocated to Trust. 
  - If `Gifter` is `Individuals` then System auto create gift tax return always.
- When Trust is Crummey trust
  - Gift given to trust will be allocated to the `Withdrawal Rights` based on their % share.
  - Maximum of 15K can be allocated to any particular Individual of `Withdrawal Rights`. Excess amount will go to the Trust and if `Giftor` is `Individuals` then system auto creates gift tax return
  - Individual can receive more than 15000 through different trusts.

#### Auto Create tax return

- In single gift if allocation is less than $15,000 but total gifts amount which Giftor gave to any Individual is more than $15,000 in a year then gift tax return will be created for Giftor
- For Gifts created before 2018, above limit is $14000.

### Edit

- Can be edited anytime
- If Giftor was joint, it can't be changed. But if Giftor was Individual, then it can be changed. System shows all joint account where this individual is involved in edit.
- Gift has been made to Partnership and later on ownership is changed in that Partnership. In this case old gifts won't be update.  It will still show old owners. If user reselect partnership again then only it will show new owners

### Delete

- Can be deleted anytime.

#### Auto delete tax return

- When Gift is deleted and due to that now single individual 15000 threshold is not valid then system auto deletes gift tax return even that tax return was created manually by user.



## UX requirements

[Mockups]()

- For Individual and Joint, shows 2 tabs - Given & Received
- For Partnership and Trust, Only shows one tab - Received
- In Given tab, records are shown in Group by of Recipient
- In Received tab, records are shown in Group by of Giftor
- In both tabs, Provides a way to filter records using year
- Shows `Inirect` tag for the Gifts in list page for the `Indirect` Gift.
  - `Indirect` gift means Gift which are not given directly.  For e.g. If gift is given to Partnership, then for the owner of that partnership, its `Indirect` Gift because its not given to owner directly but its given via Partnership
- For Foundation and Estate gifting is not applicable, so in main tab, `Gifting` won't be available

