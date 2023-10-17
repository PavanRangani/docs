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
- Can't be added when entity has no IPS. (Current or Draft).
- Grouped Entities section shows all entities where such entity is added as an Owner or Beneficiary.

### UX Rule
- When entity has no IPS, shows error message in the `Portfolio`. [See this](52)
- If entity has draft IPS, shows `Draft` word in bracket of `Date of IPS`.
- Grouped Entities
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



## Change Portfolio
### System Rule
- Can be changed anytime.


## Browse Portfolio
### UX Rule
- On hover of section, shows pencil icon to the right side.
- Pencil icon is disabled when Entity or selected `Service Team` has no ASA is setup. On hover, shows tooltip message.
- `Grouped Entities` & `Additional Investments`
    - `Grouped Entities` fields shows only those entities whose checkbox is not selected. `Additional Investments` shows all entities whose checkbox is not selected.
    - Records are shown in alphabetical order of name. 
    - Shows `-` when no records available.
    - It is link. On click, opens that trust or partnership in new page.

### UI Rule
- Tooltip message: `It must have its own ASA or linked to a household with an ASA`.
- [Mockup](https://drive.google.com/file/d/1BFQ6LjPAYsTojkgus_D42rrb3n1jWdmM/view?usp=sharing)