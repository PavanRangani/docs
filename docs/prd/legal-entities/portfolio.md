# Portfolio
## Overview
- If a single Household is the 100% beneficiary of an Entity, e.g. a Trust, then this Entity will not have it’s own IPS (even though there will be an ASA): instead, the management of this Entity’s Portfolio is handled by the Household’s IPS. Such entities are called `Grouped Entities`
    - Example: `Carson Beck Alberg Irrevocable Trust` is an Entity that is rolled up into `Carson Beck Alberg’s` IPS, since Carson is the 100% beneficiary of this trust.
- There are other Entities where Carson has only a partial interest, and these have their own IPS and Accounts: Carson owns 25% of Alberg Family Investments and is a 25% beneficiary of the Alberg/Beck Family GST Trust. Such entities are called `Additional Investments``

## Entity Details
- Portfolio
    - It is dropdown of `Yes` & `No`. Default `No` option is selected.
- Date of IPS
    - Applicable only when Portfolio is `Yes`.
    - It pulls the latest current or draft IPS date of the entity. 
- Portfolio ID
    - Applicable only when Portfolio is `Yes`
    - It is a free form text input field.
- Portfolio Status
    - Applicable only when Portfolio is `Yes`.
    - It pulls the Portfolio Status from the `Investment | Workspace` tab of the entity.

## Assign Portfolio
### System Rule
- Each entity will have its own Portfolio.
- Can be assigned only when entity or `Clarius Team` has ASA details.
- Can be added only when entity has IPS. (Current or Draft).
- Grouped Entities section shows all active entities where such entity is added as an Owner or Beneficiary.
- For Entity having service team 
    - When entity doesn't have Investment role but its household has Investment role, system will auto pull Investment role from the Household.
    - When household team doesn't have Investment role, system won't allow to add Portfolio.

### UX Rule
- When entity has no IPS, shows error message in the `Portfolio`. [See this](52)
- If entity has draft IPS, shows `Draft` word in bracket of `Date of IPS`.
- When the system auto pulls the Investment roles from Household team, the system shows the proper hint message.
- When the household team doesn't have Investment role, system shows proper error message.
- Grouped Entities (Temporarily this field is not shown because Keith has yet to provide some updates. So once he gives update, we will show this both fields.)
    - Applicable only when `Portfolio` is Yes.
    - It is a checkbox field. User can select more than one value.
    - Records are shown in alphabetical order of name. When the name is too long, it shows the name in multiline.
    - Representation of each records
        - For all entity other than Joint: `{Partnership or Trust name} | Owner or {type of beneficiary} - {% of owner or beneficary} | {IPS Date}`
        - For Joint: `{Partnership or Trust name} | {Individual name} (Owner or {type of beneficiary} - {% of owner or beneficary}) | {IPS Date}`
    - Shows proper message when no records available.
    - When Trust and Partnership have no IPS, shows `No IPS` word at last. For e.g. `Albrecht-McCormick Irrevocable GST Trust of 2018 (Reviewed with CB 04.26.2019) | Jasmina Lunagariya (Owner - 25.00 %) | No IPS`
        - For this, checkbox is shown disable.
        - On hover of that records, shows tooltip message. [See this](https://drive.google.com/file/d/1HyGzAVT7ikIvIIHbavZmgRha-cJ8jJli/view?usp=sharing)

### UI Rule
- [See flow](https://drive.google.com/drive/u/0/folders/1nEvpRZkLGcpZLV5BzgXxf8qghUCGyFWg)
- Error message: `This Entity doesn't have its own IPS`. 
- When no records avaialble: `This entity is not owner of any Partnership or beneficiary of Trust.`
- Tooltip message when entity have no IPS: `This Entity doesn’t have IPS. So you can’t select it`
- Hint message when system auto pull the household team: `System will auto pull Investment roles from the selected Service team`
- Error message when Invesment role is not avaialble: `This entity's Service team doesn't have Investment roles`


## Change Portfolio
### System Rule
- Can be changed anytime.
- When Portfolio is set to No, system will remove the Investment roles from the Household team.
- When a household has a `Portfolio` service and is used as a service team in another entity that has a Portfolio, the system will restrict to remove the Portfolio for the household.

### UX Rule
- For Household entity, when Portfolio is changed from No to Yes, system will ask the missing role.
- System shows proper hint message when Investment role is removed.
- System shows error message when `Portfolio` service of Household is resticted.

### UI Rule
- Hint message when Investment role is removed: `You change the Portfolio. System will also remove the Investment roles`.
- Error message when Bill Pay service is restricted: `You can’t remove Portfolio because this entity is used as Service team in other entities and it has Portfolio`.


## Browse Portfolio
### UX Rule
- On hover of section, shows pencil icon to the right side.
- Pencil icon is disabled when Entity or selected `Service Team` has no ASA is setup. On hover, shows tooltip message.
- `Grouped Entities` & `Additional Investments` (Temporarily this field is not shown because Keith has yet to provide some updates. So once he gives update, we will show this both fields.)
    - `Grouped Entities` fields shows only those entities whose checkbox is not selected. `Additional Investments` shows all entities whose checkbox is not selected.
    - Records are shown in alphabetical order of name. 
    - Shows `-` when no records available.
    - It is link. On click, opens that trust or partnership in new page.

### UI Rule
- Tooltip message: `It must have its own ASA or linked to a household with an ASA`.
- [Mockup](https://drive.google.com/file/d/1BFQ6LjPAYsTojkgus_D42rrb3n1jWdmM/view?usp=sharing)


## Known case
### System allows an individual to hold a portfolio even if they do not have an investment role.
- If Individual is part of Joint, household team of Individual and Joint both are same.
- Suppose Carson has Portfolio. Now user creates a Carson's Joint. Joint's Household is set to Yes. So Household team of joint is pulled to the Carson. Joint doesn't have Portfolio. So it doesn't have Investment role. So in this case, it will happens that individual have Portfolio but it doesn't have Investment role.
- In this case, when user set Portfolio at Joint level, system will ask Investment role. Once the Joint have Investment role, system will set Investment role to the Individual. 