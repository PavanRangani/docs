# Disregarded Entity tax return

## Overview
- Sometimes Partnerships and Trusts don't have their own tax return. But its tax return is filed under Grantor or Individual or Owner tax return. So we have given one new option `Disregarded Entity` option from the tax return where the user can enter this tax return.

## Disregarded tax return in Partnership and Trust

### System Rule
- Disregarded Entity tax return is applicable only for the Trust and partnership.
- If `Trust is Grantor trust` & `Partnership is Individual SSN` & `Partnership is LLC-EIN-Single owner`, allows entering disregarded entity tax return.
  - For LLC - EIN - Single owner means the Single individual, Two individuals of the same Joint.
- Disregarded entity tax returns have only the Components section. It doesn't have other information like Preparation, Federal return (Payment, Return Summary) and State return. 
  - So when the user changes the Form from Disregarded Entity to Other form or vice-versa, the system adds/delete some of the data of the return.
- If the `Grantor to` or `Individual SSN` or `Owner` tax return is filed, system will not allow to filing of a disaregaded entity tax return for that year. 
- Tax Component will be pulled to the `Grantor to` or `Individual SSN` or `Owner` tax return.
- When any Trust or Partnership tax return is created, the system shows information due to the existing return won't be changed.
  - For Trust, it is Grantor or Not.
  - For Partnership, `Partnership Type` or `Individual SSN or EIN` or `Single owner or not`. 
- If the user changes the Individual SSN, the system won't update the existing SSN value from the existing return.


### UX Rules

#### Trust
- When trust is Grantor trust, the system shows `Grantor Filing Status`. It's a dropdown. Values are: `Filed on Grantor's Tax Return`, `Filed under 5227 Form` & `Filed under 1041 Form`. By default, `Filed on Grantor's tax return` is selected. [See this](https://drive.google.com/file/d/1xx77IoVxu_LOvXr-BQEH_PMKOQTlKrpL/view?usp=share_link)
- System shows one field `Grantor to` when `Filed on Grantor's tax return` is selected. It is a dropdown of the Family active individual. [See this](https://drive.google.com/file/d/17BISd84NsAR4NPcE1WdzhRz8uneybhwD/view?usp=share_link)
- System shows an error message when the `Grantor to` tax return is already filed. [See this](https://drive.google.com/file/d/1qz2kTf8bj7GwDOW6CJJKUlFySnxEzEnm/view?usp=share_link)
- When the user changes trust from `Grantor` to `Non-Grantor` or vice-versa, the existing return won't be updated.

### SSN - Partnership
- When the `Tax ID type` of the Partnership is `Individual SSN`, the system shows the Individual SSN name in the tax return dialog. [See this](https://drive.google.com/file/d/1_fK4aSJOMzdavXW1QhyDoDkKLFHh6BiX/view?usp=share_link)
- If a partnership has no individual SSN and the user adds a tax return, the system shows an error message. [See this](https://drive.google.com/file/d/1av96X-jgzjxUBisJBVoLhghQER3nbzf_/view?usp=share_link)
- System shows an error message when an `Individual SSN` tax return is already filed. [See this](https://drive.google.com/file/d/1YhP0I3zbYFwonoiTz9aKg6HfRtfA_9MC/view?usp=share_link)
- When the user changes their Individual SSN, the existing return won't be updated.

#### LLC- Single owner Partnership
- EIN type partnership tax return have one field `LLC-Single owner`. It shows that partnership is LLC & EIN & Single owner. It partnership is `LLC-EIN-Single Owner`, shows Yes otherwise shows No. [See this](https://drive.google.com/file/d/1IBKZqMFMSoA__vDUf3SwRTXVqOzy4kG_/view?usp=share_link)
- If the `LLC-Single Owner` is Yes, shows one checkbox of `Filed as Disregarded Entity`. Default it is unchecked.
- If a user is changing it to check, the system shows a new field `Pull Components to`.
  - User can't be added manually. It's auto-generated when a tax return is created. Its value is either individual or Joint.
  - If a single individual is added as owner, show the Individual name. if that individual has a Joint, show the Joint name.
  - If two Individual of the single Joint is added as owner, shows that Joint name.
- If the `Pull Components to` tax return is filed, the system shows an error message. [See this](https://drive.google.com/file/d/1j5usdhAC97UI3YtTNOTtDgGde1f_fX3R/view?usp=share_link)
- If the `Pull Component to` is Joint, components will be pulled to the Joint, not an Individual.
- If the ownership is changed, the existing return won't be updated.
- Duplicate tax returns can't be allowed. [See this](https://drive.google.com/file/d/1YL_w6ET6-LwNlMT33rTS_WL3csGxHjno/view?usp=share_link)
  - For e.g If P1 has one Disregarded entity 2022 tax return for the Individual SSN. The system won’t be allowed to add a Disregarded entity 2022 tax return for LLC & EIN type.


### UI Rules
- When selected individual tax return is already Filed.
  - Trust: `Grantor's Tax return is already filed for this year` 
  - Partnership: `Individual's Tax return is already filed for this year`
  - Partnership-LLC-Single owner: `Owner Tax return is already filed for this year` 
- Error message for partenrship tax return when individual SSN isn't available: `Individual SSN is not specified for partnership`


## Pull components of Disregarded return to `Grantor to` or `Individual (SSN Individual or Single Owner)` 

### System Rules

- Tax components are only pulled on the `1040` tax return. [See this](https://drive.google.com/file/d/1hXFZ9cw1M5UFyCaKEGqe4sn6NU1YSnNu/view?usp=share_link)
- Tax components of the `Disregarded Entity` of the Partnership & Trust are pulled to the individual where the individual is added as the `Grantor to` in a Trust tax return or `SSN of` in a Partnership or `Pull compoennt to` in a LLC - Single owner partnership.
- Tax Components are pulled only in the same year.
    - For e.g. If Partnership `P1` have the tax return of the disregarded entity for the 2021 year, it will only be pulled to the individual 1040 tax return for 2021.
- If the individual doesn't have a 1040 tax return but their Joint does have 1040, the tax component of the disregarded entity will be pulled to the Joint. 
- If both the Individual and Joint have a 1040 tax return, the tax component of the disregarded entity will be pulled in both joint and individual.
- Active and Archived both tax returns will be pulled.

### UX Rules

- If the disregarded entity have no component or disable component, then also its entity is pull to the individuals with proper message.
- Shows `Disregarded Entity` word for other entities having disregaeded entity in the bracket.
- On hover other entities, shows one icon. On click, opens the components tab of that tax return in the new tab.
- Allows to add disregarded entity tax component from the `Grantor to` 1040 individual return. Each entity has `+` button. on click, opens a add component dialog. 


### UI Rules 

[Mockup](https://drive.google.com/drive/u/0/folders/1QqPmjJbMrwoPYx6e5WxV7bvMglgwRUA_)

- Message when no components available: `No Components Found`.

