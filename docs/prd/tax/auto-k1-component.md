# Auto K1 Component

## Auto create K1 component for Individual due to Grantor trust

### System Rule
- `Grantor To` is applicable only for Grantor trust tax return.
- System will auto create the K1 component for the tax return of 2022 or later years.
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


## Auto create K1 compoennt for legal entities due to ownership in the Partnership