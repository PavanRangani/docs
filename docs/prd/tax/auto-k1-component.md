# Auto K1 Component

## Auto create K1 component for Individual due to Grantor trust

### System Rule
- `Grantor To` is applicable only for Grantor trust tax return.
- System will auto-create K1 component for the tax return for 2022 or later years. Old return dooesn't have auto create K1. (This decision was taken to avoid any changes in historical tax returns which are filed)
- If the trust is a `Grantor trust` and files a `1041` return, the system will create a `K1` type compoennt for the `Grantor's` 1040 tax return.
    - For e.g. `Sue` is added as `Grantor to` on the 1041 return of grantor trust `T1`. So the system will auto add the K1 component to the Sue's 1040 tax return.
- There are total 4 cases when system creates an auto K1 components
    - When user adds 1041 tax retunr and if that individual is added as a `Gantor to` from other trust tax retunr, system auto create component.
    - Individual has 1041 return. Now, he is added as `Grantor to` for any 1041 return, shystem auto create component.
    - When user edits any existing 1041 return and adds a `Grantor to`, system auto create component.
    - When user adds a next year return from mail and above cases are happens, system auto create compoenent.
- This compoenent is auto created in the individual 1040 return. So this component won't be visible in the trust 1041 tax return. 
- Auto creates components name will be same as the trust name. If trust name is changed, component name will be auto changed.
- System will creates an auto compoenent with following information:
    - Section: `Part 1- Income`, Document: `K1`, Status: `Pending`, Resposnsible: `Pending`.
    - `Where to send notes` will be prefilled from the 1040 return.
    - It won’t have Final Year checkbox
- If `Grantor to` doesn't have its own 1040 return but their Joint does have 1040, system will auto creates K1 component in the Joint.
    - If both Individual and Joint have a 1040 tax return, system will auto creates components in both.
- Even if the 1040 tax return is archived, the system will auto create K1 component in 1041 tax return.
- Users can not delete this auto created K1 component. 
- If the `Grantor to` is changed, system auto deletes compoenent from one entity and creates a compoenent to the new entity.
- When trust tax return is deleted, system auto deletes a K1 tax component.


### UX Rule

- `Component Name`, `Section` & `Document` is shown disabled in edit mode.
- `Delete` action won't be shown in the dropdown and View dialog.
- `+` button is not applicable for the auto create compoennt's entity.

### UI Rule

[Mockup with auto K1](https://drive.google.com/file/d/1AzPWemGJ_hveB3YMTOj0hUBATff3nWGD/view?usp=share_link)


## Auto create K1 compoennt for legal entities due to ownership in the Partnership

### Auto K1 logic

#### Overview
- If legal entity is owner in partnership, that legal entity has to file K1 component of that partnership. Till now Clarius team was creating that component manually. But it was not accurate. Many times they miss to report K1. 
- To solve this Athena generates Auto K1 in legal entity tax return.

#### System Rules
- System will auto-create K1 component for the tax return for 2022 or later years. Old return dooesn't have auto create K1. (This decision was taken to avoid any changes in historical tax returns which are filed)
- K1 is generated only when Partnership tax return is created and Owner tax return status is not filed. If partnership tax return is not yet created, K1 won’t be generated. If partnership tax return is created but owner tax return is already filed, K1 won’t be generated.
- System doesn’t generate K1 when there is any change in partnership ownership. This decision was just taken to reduce the complexity.
    - For e.g. `Keith` is owner in the partnership `P1`. User creates 2022 tax return for P1. So system auto add K1 to the 2022 Keith's tax return. Now, if the user add `Sue` as a owner. System won't be auto add K1 component to the Sue tax return.
- System make sure that name of the K1 is always same as name of that legal entity. It means when there is any change in partnership name, name of the Auto K1 generated in other legal entities due to this partnership is auto updated.
- If an entity has 2 tax returns for the same year for a different form, the system adds an auto component from both tax returns. 
    - For e.g. Trust `T1` is the owner of the partnership `P1`. `T1` has 1041 & 5227 & Disregarded tax returns for 2022. User adds a tax return of `P1` for 2022. System auto adds a K1 component to all of the trust tax returns.
- If a partnership has 3 tax returns for the same year with different forms, the system adds only one K1 component to the owner’s tax return.
    - For e.g. `P1` has 3 tax returns 1065 & 1120-S & Disregarded Entity. T1 is the owner of the P1. Now, user creates a 5227 tax return for T1. So system auto adds only one k1 components to the 5227 return. (Here, if we create 3 K1 components with the same section and component name, users will get confused as to which component belongs to which tax return. This is a really edge case. So we will create only one component in such a case.)
    - This auto K1 component won't be deleted until all partnership tax returns are deleted.
- System will creates an auto compoenent with following information:
    -  Section: `Family Partenrship`, Document: `K1`, Status: `Pending`, Resposnsible: `Pending`.
    - `Where to send notes` will be prefilled from the 1040 return.
    - It won’t have Final Year checkbox
- Individual is owner of the partnership and that individual have Joint. So system auto creates K1 to the Joint also.
- Auto create component can't be deleted.

**When component will be created**
- When Partnership tax return is created.
- When Owner's tax return is created
- When compoennt tab is marked as Disabled for owner's tax return.

**When component will be deleted**
- When partnership is deleted
- When partnership tax return is deleted
- When Owner's tax return is deleted
- When component tab is marked as Enabled for owner's tax return


#### UX Rule
- To differentiate Auto K1 from other components, it shows some icon with such component.

#### UI Rule

[Mockup with auto K1 component](https://drive.google.com/file/d/1h1OO42CwioO8PbJQE7plmbDyrzPzHxup/view?usp=share_link)


### Resync Auto K1

#### Overview
- System doesn’t generate Auto K1 when there is any change in partnership ownership. Also same way, system doesn’t generate K1 when owner tax return is already filed. 
- So sometimes it is possible that 
    - at the time of creating Owner tax return, partnership data are not accurate and thats why required K1 is not generated or wrong K1 is generated. 
    - When partnership tax return is created, owner’s tax return was already filed, so its K1 wasn’t generated
- To fix such data inconsistency, this feature can be useful
- Using this feature, Clarius team can trigger Auto K1 generation based on the need

#### System Rule
- Resync Auto K1 feature is only available for tax return whose status is other than filed. If tax return status is filed, this feature is not available
- When Resync action is triggered by user, system will check all the conditions of Auto K1 generation and add/delete K1 accordingly

#### UX Rule
- On click of Resync actions, system takes confirmation from user with proper message.

#### UI Rule

[Mockup](https://drive.google.com/file/d/1j4NqJkb6g6fwrrPk96z5Gsf7PJp_MZEG/view?usp=share_link)


