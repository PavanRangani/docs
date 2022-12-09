# Gifting

## Add Gift

- Only Individual or Joint can give gift. 
- Gift can't be given to Terminated trust.
- `Fair Market Value` is grater than `Gift Tax Value` otherwise system show error message like `Should be <= Fair Market Value`.
- Gift can not add when `Gift Tax Value` and `Fair Market Value` are 0.
- When `GST Exempt` is true (GST Gift), `Grant date` is always grater than or equal to `01/01/1985` otherwise system show an error message.
  - Error Message : `You can not add GST Gift before 1985`.
- When `GST Exempt` is false (Lifetime Gift), `Grant Date` is always granter than or equal to `01/01/1980` otherwise system show an error message.
  - Error Message : `You can not add Gift before 1980`.
- Future year gift is not allowed otherwise system shows error message. 
  - Error Message : `Should be <= 12/31/2021 (Future year gift is not allowed)`.
- Users cannot be allowed to add gifts in the Gifting tab that the user has already manually added to the summary tab for the year. 
  - Error message: `You can not add Gift of 2016 year because manual entry is added for that year in summary tab`.
- `Charitable Gift` or `Retained Interest` is less than or equal to `Fair Market Value` otherwise system show error message like `Should be <= Fair Market Value`.
- Gift can be given to Individual, Joint and Trust of any family.
- [Mockup of Investmnet fund](https://drive.google.com/drive/u/0/folders/1_5vbqfI7SszpWPvi3nfVkGvBYOUanM4_)

### Gift from/to Individuals

#### UI Requirement

- When both `Giftor` and `Recipient` is Individual, `Gift allocation` section will come.
- [Mockups of `Giftor`& `Recipient` is `Individuals`](https://drive.google.com/file/d/1eiz0wrfPFYITBavqGmUxExMT7-sx8Nlh/view)

### Gift from/to Joint

- When `Giftor` is `Joint`, by default system allocates 50-50 % to each `Individual` . System allows user to change this allocation
- When `Recipient` is `Joint`, by default system allocates 50-50 % to each `Individual` . System allows user to change this allocation

#### UI Requirement

- [Mockups of `Giftor` & `Recipient` is `Joint`](https://drive.google.com/file/d/1vKPUPrWEXNSuaItMEQKFLMww_84nMmNn/view)


### Gift to Trust

- Gift given to Trust will be treated differently based on the trust is Crummey or not.

#### UI Requirement

- [Mockups of `Recipient` is `Trust`](https://drive.google.com/file/d/1UUN1ZNTkwev_D2Dv8UxlYRjP1Bg8v8aJ/view)

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
| Entity Name | Percentage |
| ----------- | ---------- |
| Chirag      | 40%        |
| Keith       | 60%        |

**Trust 2 withdrawal rights**
| Entity Name | Percentage |
| ----------- | ---------- |
| Chirag      | 40%        |
| Ravi        | 60%        |

#### Scenario 1: Arun gives $30,000 gift to Trust 1

**Distribution:**

| Entity Name | Percentage | Total Amount |
| ----------- | ---------- | ------------ |
| Chirag      | 40%        | $ 12,000     |
| Keith       | 60%        | $ 15,000     |
| Trust 1     |            | $  3,000     |

Gift Tax Return: Yes

#### Scenario 2: Sue gives $20,000 gift to Trust 1

Arun has given a gift to Trust as per Scenario 1. Now, Sue gives a gift to the same Trust.

**Distribution:**

| Entity Name | Percentage | Total Amount |
| ----------- | ---------- | ------------ |
| Chirag      | 40%        | $  8,000     |
| Keith       | 60%        | $ 12,000     |
| Trust 1     |            | $      0     |

Gift Tax Return: No.  Though Chirag & Keith has individually received more than $15,000 via this Trust during this year. But, they didn’t receive this much amount from a single individual.

#### Scenario 3: Arun gives another Gift of $10,000 to Trust 1 during same year

Arun has given a first gift to the Trust as per Scenario 1 and now gives another gift during the same year.

**Distribution:**

| Entity Name | Percentage | Total Amount                             |
| ----------- | ---------- | ---------------------------------------- |
| Chirag      | 40%        | $  3,000 (As $12,000 was received from Arun earlier) |
| Keith       | 60%        | $      0 (As $15,000 limit is reached for this year for Gift from Arun) |
| Trust 1     |            | $  7,000                                 |

Gift Tax Return: Yes. No need to create another Gift Tax Return. But, Gift Tax Return should exist for Arun already as a result of Scenario 1.

#### Scenario 4: Arun gives 3rd Gift of $20,000 to Trust 1, Next year.

Arun has given 2 gifts as per Scenario 1 and Scenario 3. Now, gives 3rd Gift to the same Trust, but next year.

**Distribution:**

| Entity Name | Percentage | Total Amount |
| ----------- | ---------- | ------------ |
| Chirag      | 40%        | $  8,000     |
| Keith       | 60%        | $ 12,000     |
| Trust 1     |            | $      0     |

Gift Tax Return: No

#### Scenario 5: Individual receives total $15,000 gifts from an Individual, through different trusts; no other gifts exist for these two trusts in this year.

Arun gives a gift of $20,000 to Trust1.
Arun gives 2nd gift of $20,000 to Trust2.

**Trust 1 distribution:**
| Entity Name | Percentage | Total Amount |
| ----------- | ---------- | ------------ |
| Chirag      | 40%        | $  8,000     |
| Keith       | 60%        | $ 12,000     |

Gift Tax Return: No

**Trust 2 distribution**

| Entity Name | Percentage | Total Amount |
| ----------- | ---------- | ------------ |
| Chirag      | 40%        | $  8,000     |
| Ravi        | 60%        | $ 12,000     |

Gift Tax Return: Yes, Arun has given total $16,000 gift to Chirag via 2 different Trusts.

#### Scenarios for Joint to Trust

#### Setup

Trust 1 withdrawal rights

| Entity Name | Percentage |
| ----------- | ---------- |
| Chirag      | 40%        |
| Ravi        | 60%        |

Joint 1
| Entity Name | Percentage |
| ----------- | ---------- |
| Vishal      | 40%        |
| Sue         | 60%        |

#### Scenario 1: Joint 1 gives $30,000 gift to Trust 1

Distribution:

|              |                         | From Vishal | From Sue |
| ------------ | ----------------------- | ----------- | -------- |
| Vishal (40%) | Chirag (40%) - $ 12,000 | $ 4800      | $ 7200   |
| Sue (60%)    | Keith (60%)  - $ 18,000 | $ 7200      | $ 10,800 |
|              | Trust 1 - $ 0           |             |          |

Gift Tax Return: No Although Keith has individually received more than $15,000 via this Trust during this year. But, they didn’t receive this much amount from a single individual.

#### Scenario 2: Joint 1 gives another Gift of $14,000 to Trust 1 during same year

Distribution:

|              |                         | From Vishal | From Sue |
| ------------ | ----------------------- | ----------- | -------- |
| Vishal (40%) | Chirag (40%) - $  5,600 | $ 2240      | $ 3360   |
| Sue (60%)    | Keith (60%)  - $  8,400 | $ 3360      | $ 4200   |
|              | Trust 1 - $ 840         |             |          |

Gift Tax Return: Yes for Sue.



### Auto Create tax return

- After 2021, when Gift amount given to any individual is more than $16,000 in a year then gift tax return will be created for Giftor
  - Here Giftor can be direct Individual or through Joint
  - Recipient can be through Joint Foundation, Estate or Trust
- This Gift amount is considered from all gifts.
  - For e.g. In a single gift, allocation is less than `$16,000` but total gift amount which Giftor gave to that Individual is more than `$16,000` then tax return will be created.
- For Gifts created before 2018, above limit is `$14,000`.
- For Gifts created in between 2019-2021, above limit is `$15,000`.
- For Gifts created after 2021, above limit is `$16,000`.



## Edit Gift

- Can be edited anytime
- A gift of an terminated trust can't be edited.
- If Giftor was joint, it can't be changed. But if Giftor was Individual, then it can be changed. System shows all joint account where this individual is involved in edit. [See this mockups](https://drive.google.com/file/d/1yFp9BYaVmRB3hh3v2WpVZHriclqGvqqr/view)
- Gift has been made to Partnership and later on ownership is changed in that Partnership. In this case old gifts won't be update.  It will still show old owners. If user reselect partnership again then only it will show new owners
- Once a tax return is filed, we can't change any of that year's gifts from `Final` to `Estimated`.
- When user edits a gift given to Crummey trust and changes its year, calculation will also be updated in the recipient section according to annual gift limit in the newly entered year
  - For e.g. Suppose `Trust T1` is a Crummey trust and `I1 (50%)` and `I2 (50%)` individuals are its withdrawal rights. Giftor `G1` has given a gift of 32,000 to T1 in 2021. So gifts will be allocated to `I1 (15,000)` and `I2 (15,000)` and `T1 (2,000)` and a tax return is created for `G1`. Now user edits that gift and change the gift date from 2021 to 2022. Then Gift allocation will be changed to `I1 (16,000)` and `I2 (16,000)` and `Trust T1 (0)`.  So due to this, now tax return of the giftor G1 will also be deleted.
- Any existing gift where recipient is terminated trust then Gift can’t be edited. Shows `Edit` action is disable and on hover, shoe tooltip. 

### UI Requirement

- When recipient is trust and user opens edit dialog of that gift. 
  - If a user opens a gift edit dialog and Crummey status is changed to `Yes` for that trust, then the system shows an error like this : `Crummey status of this trust is changed. Please reselect recipient to save this gift`.  [See this](https://drive.google.com/file/d/16mr6eweBBkJJu48pTu5NyzE5G0aWKyre/view)
- Tooltip message: `Recipient of this gift is marked as terminated`

#### Scenario 

Given: I have one non-Crummey trust 

And: I have added a gift for that non-Crummey trust

When: I change the status of that trust from Non-Crummey to Crummey

And: I open the gifting edit dialog for that trust

Then: System show valid error message.



## Delete Gift

- Can be deleted anytime.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1d_ES7hho55M-MkxJK1piCATeOMyGoAU-/view)

#### Auto delete tax return

- When Gift is deleted and due to that now single individual 15000 threshold is not valid then system auto deletes gift tax return even that tax return was created manually by user.

## Annual Gift amount change

Time to time Annual Gift amount limit can be changed. You can see the table:

| Year             | Limit      |
| ---------------- | ---------- |
| Before 2018      | $ 14,000   |
| 2018-2021        | $ 15,000   |
| 2022             | $ 16,000   |
| From 2023        | $ 17,000   |

So when this limit is changed, we have one configuraion in application. Updating that configuration, system will work accordingly. No code update is needed. 

This change will affect in triggering tax return and crummey trust gift distribution. 
