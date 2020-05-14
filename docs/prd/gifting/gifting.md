# Gifting

## Add Gift

- Only Individual or Joint can give gift. 
- Gift can be given to Individual, Joint, Partnership and Trust of any family.

### Gift from Individuals

- When `Giftor` is `Individuals`, `Gift allocation` section will not come.

#### UI Requirement

- [Mockups of `Giftor` is `Individuals`](https://drive.google.com/file/d/1x88H_HSDJfI0AtTkUq1gElkM1RB36z8r/view)

### Gift to Individuals

- When `Recipient` is `Individuals`, `Gift allocation` section will not come.

#### UI Requirement

- [Mockups of `Giftor` is `Individuals`](https://drive.google.com/file/d/1x88H_HSDJfI0AtTkUq1gElkM1RB36z8r/view)

### Gift from Joint

- When `Giftor` is `Joint`, by default system allocates 50-50 % to each `Individual` . System allows user to change this allocation

#### UI Requirement

- [Mockups of `Giftor` is `Joint`](https://drive.google.com/file/d/1AYHiqNRl4C-crSSUaMrTpiu3TSrHvmLE/view)

### Gift to Joint

- When `Recipient` is `Joint`, by default system allocates 50-50 % to each `Individual` . System allows user to change this allocation

#### UI Requirement

- [Mockups of `Recipient` is `Joint`](https://drive.google.com/file/d/1AYHiqNRl4C-crSSUaMrTpiu3TSrHvmLE/view)

### Gift to Partnership

- Gift will be allocated to the owners of that partnership. Allocation will be done based on the % share of  current owners. 
- Partnership can have another Partnership  as owner. In this case, System retrieves owners recursively and allocates gift based on their % share.

- Example case

  - We have two Partnerships. P1 & P2.  
  
    - P1 has two owners: Chirag (50%) & P2(50%). 
    - P2 has three owners: Ajay (40%), Chirag(30%), Chetan (30%)
    
  - When gift of 25000 given to P1, it will be allocated to Ajay, Chetan and Chirag as follows	
  
    | Owners | Gift amount they will receive                                |
    | ------ | ------------------------------------------------------------ |
    | Chirag | 16250 ( 12500 `(50% from P1)` + 3750 `(30% of 12500 from P2)`) |
    | Chetan | 3750 (30% of 12500 from P2)                                  |
    | Ajay   | 5000 (40% of 12500 from P2)                                  |
  
- If the gift is going to a Partnership, the percentage distribution is determined at the time the gift is made. If the ownership of Partnership changes subsequently, the original Gift’s distribution is not changed.

#### UI Requirement

[Mockup of Direct Partners](https://drive.google.com/file/d/1bihtGs23aWZWSpRf_xkqB2RsCYbYAg8B/view) & [Mockup of Indirect Partner](https://drive.google.com/file/d/1u2r4rb8f2ruuhIATi-cTbeYJGNgWCgLo/view)

- When partnership has direct partners, allocation table will show % share and amount both.
- When partnership has inner level partners (in case of one partnership has other partnership), allocation table shows only amount allocated to that partners. In this case it shows info icon with amount.
- On hover of info icon it shows tooltip. Tooltip shows detail about how amount is calculated.
- [Tooltip](https://drive.google.com/file/d/18DVsjeZyEag28dc4hrvTJ0u6AouXw9hU/view) 
  - Two columns: Via & Received Amount
  - Via: Shows name of the partnership. As secondary information shows % and total amount of that partnership
  - Received Amount:  Shows amount received from that partnership



### Gift to Trust

- Gift given to Trust will be treated differently based on the trust is Crummey or not.

#### UI Requirement

- [Mockups of `Recipient` is `Trust`](https://drive.google.com/file/d/16VG88PooN6yuZqBowUDC7TbYnCu1qUzu/view)

**When Trust is not Crummey Trust**

- Gift given to trust will be allocated directly to Trust (Not to the Withdrawal Rights)
- System auto create gift tax return always

##### Scenarios



**When Trust is Crummey trust**

- Gift given to trust will be allocated to the `Withdrawal Rights`  of the trust based on their % share.
- Individual can receive maximum 15K from same trust.  Maximum of 15K can be allocated to any particular Individual of `Withdrawal Rights` via same trust. Excess amount will go to the Trust directly. System auto creates gift tax return
- Individual can receive more than 15K through different trusts.

#### Scenarios for Individual to Trust

#### Setup

**Trust 1 withdrawal rights**
| Entity Name    | Percentage        |
| -------------- | ----------------- |
| Chirag         | 40%               |
| Keith          | 60%               |

**Trust 2 withdrawal rights**
| Entity Name    | Percentage        |
| -------------- | ----------------- |
| Chirag         | 40%               |
| Ruchita        | 60%               |

#### Scenario 1: Arun gives $30,000 gift to Trust 1

**Distribution:**

| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $ 12,000                                                     |
| Keith          | 60%               | $ 15,000                                                     |
| Trust 1        |                   | $  3,000                                                     |

Gift Tax Return: Yes

#### Scenario 2: Sue gives $20,000 gift to Trust 1

Arun has given a gift to Trust as per Scenario 1. Now, Sue gives a gift to the same Trust.

**Distribution:**

| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $  8,000                                                     |
| Keith          | 60%               | $ 12,000                                                     |
| Trust 1        |                   | $      0                                                     |

Gift Tax Return: No.  Though Chirag & Keith has individually received more than $15,000 via this Trust during this year. But, they didn’t receive this much amount from a single individual.

#### Scenario 3: Arun gives another Gift of $10,000 to Trust 1 during same year

Arun has given a first gift to the Trust as per Scenario 1 and now gives another gift during the same year.

**Distribution:**

| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $  3,000 (As $12,000 was received from Arun earlier)                                                     |
| Keith          | 60%               | $      0 (As $15,000 limit is reached for this year for Gift from Arun)                                                     |
| Trust 1        |                   | $  7,000                                                     |

Gift Tax Return: Yes. No need to create another Gift Tax Return. But, Gift Tax Return should exist for Arun already as a result of Scenario 1.

#### Scenario 4: Arun gives 3rd Gift of $20,000 to Trust 1, Next year.

Arun has given 2 gifts as per Scenario 1 and Scenario 3. Now, gives 3rd Gift to the same Trust, but next year.

**Distribution:**

| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $  8,000                                                     |
| Keith          | 60%               | $ 12,000                                                     |
| Trust 1        |                   | $      0                                                     |

Gift Tax Return: No

#### Scenario 5: Individual receives total $15,000 gifts from an Individual, through different trusts; no other gifts exist for these two trusts in this year.

Arun gives a gift of $20,000 to Trust1.
Arun gives 2nd gift of $20,000 to Trust2.

**Trust 1 distribution:**
| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $  8,000                                                     |
| Keith          | 60%               | $ 12,000      |

Gift Tax Return: No

**Trust 2 distribution**

| Entity Name    | Percentage        | Total Amount                                                 |
| -------------- | ----------------- | ------------------------------------------------------------ |
| Chirag         | 40%               | $  8,000                                                     |
| Ruchita        | 60%               | $ 12,000                                                     |

Gift Tax Return: Yes, Arun has given total $16,000 gift to Chirag via 2 different Trusts.

#### Scenarios for Joint to Trust

#### Setup

Trust 1 withdrawal rights

| Entity Name    | Percentage        |
| -------------- | ----------------- |
| Chirag         | 40%               |
| Ruchita        | 60%               |

Joint 1
| Entity Name    | Percentage        |
| -------------- | ----------------- |
| Vishal         | 40%               |
| Sue            | 60%               |

#### Scenario 1: Joint 1 gives $30,000 gift to Trust 1

Distribution:

|             |                            | From Vishal   | From Sue      |
| ----------- | -------------------------- | ------------- | ------------- |
| Vishal (40%)| Chirag (40%) - $ 12,000    | $ 4800        | $ 7200        |
| Sue (60%)   | Keith (60%)  - $ 18,000    | $ 7200        | $ 10,800      |
|             | Trust 1 - $ 0              |               |               |

Gift Tax Return: No Although Keith has individually received more than $15,000 via this Trust during this year. But, they didn’t receive this much amount from a single individual.

#### Scenario 2: Joint 1 gives another Gift of $14,000 to Trust 1 during same year

Distribution:

|             |                            | From Vishal   | From Sue      |
| ----------- | -------------------------- | ------------- | ------------- |
| Vishal (40%)| Chirag (40%) - $  5,600    | $ 2240        | $ 3360        |
| Sue (60%)   | Keith (60%)  - $  8,400    | $ 3360        | $ 4200        |
|             | Trust 1 - $ 840            |               |               |

Gift Tax Return: Yes for Sue.



### Auto Create tax return

- When Gift amount given to any individual is more than $15,000 in a year then gift tax return will be created for Giftor
  - Here Giftor can be direct Individual or through Joint
  - Recipient can be through Joint, Partnership or Trust
- This Gift amount is considered from all gifts.
  - For e.g. In Single gift allocation is less than $15,000 but total gift amount which Giftor gave to that Individual is more than $15000 then tax return will be created.
- For Gifts created before 2018, above limit is $14000.

## Edit Gift

- Can be edited anytime
- If Giftor was joint, it can't be changed. But if Giftor was Individual, then it can be changed. System shows all joint account where this individual is involved in edit. [See this mockups](https://drive.google.com/file/d/1yFp9BYaVmRB3hh3v2WpVZHriclqGvqqr/view)
- Gift has been made to Partnership and later on ownership is changed in that Partnership. In this case old gifts won't be update.  It will still show old owners. If user reselect partnership again then only it will show new owners

## Delete Gift

- Can be deleted anytime.

#### Auto delete tax return

- When Gift is deleted and due to that now single individual 15000 threshold is not valid then system auto deletes gift tax return even that tax return was created manually by user.
