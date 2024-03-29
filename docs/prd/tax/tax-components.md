# Tax Components

## Entity

### Component

#### Name
- It's a free form text field.

#### Section
- Select box of Section applicable for this Form. See [Master of Form wise section and documents](./tax-component-master.md#master-of-form-wise-section-and-documents)

#### Document
- Select box of Section applicable for selected Section. See [Master of Form wise section and documents](./tax-component-master.md#master-of-form-wise-section-and-documents) 

#### Expected Date
- Its date input field.
- Date should not be lower than year of the tax return.

#### Responsible
- Its a selected dropdown. 
- Possible values are: `Clarius`, `Client`, `CPA`, `Mirador`, `Pending`. Default `Pending` is selected.

#### Sent Directly to CPA
- It's a checkbox. 
- Applicable only when `Responsible` is `Client` & `Mirador`. By default, it is false.
- When the user marks the checkbox as True, `Received From` field will be hidden.

#### Received From
- Its free form text input field.
- Not applicable when `Responsible` is set to `CPA`.
- Not applicable when `Responsible` is `Client` & `Mirador` and the value of `Sent Directly to CPA` is true

#### Status
- Possible values are: `Pending`, `Received`, `Sent`, `NA Current Year`. Default status is `Pending`.
- To set Tax return status `filed` all component status should be other than `Pending`
- When `Responsible` is set to `Pending`, Status is not applicable.
- `Received` status is applicable only when `Responsible` is set to `Clarius`, `Client` & `Mirador`

#### Where to Send Notes
- Applicable only for `Clarius` responsible type.
- If a `Where to send Component` is available at the tax return level, it will be pulled here. User can't change from here.
- If no notes available at tax return level, show `-` here.

#### Received
- Applicable only for `Clarius`, `Client` & `Mirador` responsible type.
- It's a date input field. 
- Applicable only when Status is `Received` or `Sent`. 
- Date should not be lower than year of the tax return.

#### Sent To
- Its a contact autocomplete dropdown. Applicable only when Status `Sent`. 
- If the tax return has `Tax component Send to` then that value will show prefill here.
- Not applicable when `Responsible` is set to `Pending` & `CPA`.
- If the `Responsible` is `Client` & `Mirador` and the value of `Sent Directly to CPA` is true, `Sent To` field will be hidden.

#### Sent On
- It's date input. 
- Applicable only when Status `Sent`. Date should not be lower than year of the tax return.
- Not applicable when `Responsible` is set to `Pending`.

#### Final Year
- It's a checkbox. By default, it is false.
- Not applicable for Auto K1 components.

#### Permanent Notes
- Its a free form text input field. It is carry forward notes. 
- When system creates a new tax return, system will carry forward the last year's Permanent notes.

#### Current Notes
- Its a free form text input field.
- This notes is not carry forward to next year's tax return. So here, user can enters the notes for the current year.

### Auto
- Its a flag. True or False
- When component is auto created, its value is true. When component is manually created, its value is false.

## System Requirement

### Create Components

- When tax return status = filed, Doesn't allow to create new component with status pending 
  - Shows error : `You can't add component with pending status as federal return is already filed`
  
**Disregarded Entities Tax Components**
  - For Partnership, If a `individual's of SSN` or `Pull Components to` tax return is already filed, component can't be added with pending status otherwise system show error message.
    - Shows error: `You can’t add component with Pending status as Individual’s tax return is already filed`
  - For Trust, If a grantor's tax return is already filed, component can't be added with pending status otherwise system show error message.
    - Shows error: `You can’t add component with Pending status as Grantor’s tax return is already filed`

### Edit Component

- Allows to change any details
- Doesn't allow to change status to `Pending` once tax return is Filed
  - Shows error: `You can't change component's status to pending as federal return is already filed`
  - This error is not applicable for the `Disregarded Entity`.
- For auto-create components, `Component Name`, `Section` & `Document` won't be changed. Shows disabled.

### Delete

- Can be deleted anytime
- Auto-create component can't be deleted by the user.
- Deleted components are not removed from the database. [See more details](./deleted-component.md#system-rule)

### Disable Components Track

- Can be disabled anytime.
- On Disable, system ask for confirmation to user about all of the current components will be deleted
- On confirmation, all components will be deleted.
- When Component tracking is disabled, `Tax Component Lead` field won’t be set.

### Enable Components Track

- Can be set Enabled from Disable anytime
- When enabled, system will auto create components based on last year as per [this](#auto-create-component-based-on-last-year)
- When component tracking is enabled, `Tax Component Lead` field will be auto set.

## Master of Form wise section and documents 
- [See master details](./tax-component-master.md#master-of-form-wise-section-and-documents)



### Browse Tax Component

- If any of the components is not available then show the `No Components Found` message.
- Shows components in 6 tabs: `All`, `Pending`, `Received`, `Sent`, `NA Current Year` & `Deleted`. 
- Deleted components are shown in the deleted tab. [See more details](./deleted-component.md#system-rule)
- Shows a number of components (Pulled + Own + Auto create) with each tab.
- Allows selecting multi-select components. 
  - When multiple components are selected, shows `Edit`, `Received`, `Send` & `Delete` action from right to left order.
    - `Send` action is applicable only for `Pending` & `Received` status components.
    - `Received` action is applicable only for `Pending` status components.
    - `Delete` action is not applicable when auto create component is selected.
  - `Received` status is showing disable when 
  - When `Client`, `CPA`, `Mirador` and `Pending` type components are selected in multi select mode, `Received` actions will be disable and it will show tooltip message.
- During multi selection action `Send` & `Receive`, if status of any of the selected component is already `Sent` or `Received`, it won't be shown in dialog.
- For `1040` form, 
  - Shows all auto create K1 component of the Trust is shown under `Family Trust` section & Partnership is shown under `Family Partenrship`. [See more details](./auto-k1-component.md#overview)
  - Shows the tax components of the disregarded entities. [See more details](./disregarded-entity.md#overview)  - 
- Column name
  - Name
    - If the name is too long, show an ellipsis.
  - Document
  - Status
    - Pending component status is shown in Orange colour.
    - Received component status is shown in Blue colour.
    - NA Current Year component status is shown in Green colour.
  - Expected
    - Shows `Excepted` date.
  - Responsible
  - Received
    - Shows `Received` date.
  - Sent 
    - Shows `Sent on` date.
  - Final Year
    - Shows checkmark if the `Final Year` checkbox is selected.
  - Auto
    - This column is applicable only when any components of this return is auto carryforwarded.
    - If component is auto created by system, shows `✔` otherwise `-`.
  - Permanent/Current Notes
    - If a note is too long, show it in multiline.
    - Shows `Permanent` and `Current` note in the single column.
    - Permanent notes is shown in the normal color. Current Notes is shown in gray color.
- Records are grouped by Entity name. 
- Sorting order
  - Components are grouped by section. In each section group, components are sorted in alphabetical order of component name.
- Shows `+` with each entity. On click, opens add component dialog of that entity.
- `+` button is not applicable for system auto create tax component. 
- On hover of each record, shows hover effect and vertmore action menu on the left side.
  - Vertmore actions: `Edit` & `Delete`.
  - `Delete` action is not applicable for systyem auto create tax component.
- On click of each component, opens view dialog.
- Allows to qucik action from list page. [See more details](#quick-edit-action-from-list-page-of-component)

## UI Requirements

[Mockups of 1040 form](https://drive.google.com/file/d/1rhJptjfrtWNGRd7Sw0Ld5xOEH3XT5VLB/view?usp=sharing)

[Mockup of other form](//TODO)

- Tooltip message: `You need to remove Client/CPA/Mirador/Pending components from the selection in order to perform this action`


### View Component

### UX Rule

- Shows only applicable field in the view dialog.
- Shows dash for the fields which are applicable but its value is blank.
- Allows to qucik action from view dialog. [See more details](#quick-edit-action-from-list-page-of-component)

### UI Rule

[Mockup](https://drive.google.com/file/d/1kgeOFaLZIi0t-6LFFgV6xR694ndmsvjA/view?usp=share_link)


## Quick Edit Components from Browse page or View dialog

- Allows to quick edit some of the fields of components from Browse page or view dialog without Edit action of component
- This quick actions are applicable for all tabs in browse page
- Shows edit icon on hover of the [Status](https://drive.google.com/file/d/1hvMcnj9tGtuUSfpOhPolkOaieh5foxPK/view?usp=share_link), [Responsible](https://drive.google.com/file/d/16LbVfQqh6P9VWiiePX6f4BqSFgmg_bT-/view?usp=share_link), [Expected](https://drive.google.com/file/d/148klTQceYA5fIBT6LKdxgAw7P8oDBpYp/view?usp=share_link), `Received` & `Sent` with the values.
- For `Pending` type Responsible & Status, quick edit is applicable only for the `Expected` column.
- For [Status](https://drive.google.com/file/d/14b-405eluColK_fndqPxW6rZX_avwhxs/view?usp=share_link) & [Responsible](https://drive.google.com/file/d/1kG1aWoaaZSWXf16_6j6nxntEmUzwX8N8/view?usp=share_link), opens select dropdown of Status or Responsible.
    - `Received` status is not applicable for the the [`CPA`](https://drive.google.com/file/d/1rxuEY__OVPC6376mNvpfNtiFDjMqD6C2/view?usp=share_link) types responsible.
    - [Pending](https://drive.google.com/file/d/148CO7b8_sHdsVIviP9m1lte55iSRXfhc/view?usp=share_link) status is shown disabled in dropdown for the Filed tax return. On hover, shows a tooltip with proper message.
    - `Received` status is applicable only for the `Clarius` & `Client` & `Mirador` type responsible. 
- For  `Expected`, `Received` & `Sent`, opens [Date picker](https://drive.google.com/file/d/1dBbtoQaWWGuukAomGPFbXK5j9g8LbXJx/view?usp=share_link) controll
    - Quick edit for `Received` field not applicable when responsible is `Client`, `CPA` or `Mirador`
- When responsible is other than Pending, [Pending](https://drive.google.com/file/d/1txeAq-46SF_jy1nUQ57TE5Q1mfFCzTOP/view) option appears disabled in the quick change responsible dialog. On hover, shows tooltip message. Reason behind this is we do not want to set status to `Pending` from quick edit. Its still possible from Edit dialog.
- [Excepted date](https://drive.google.com/file/d/1lfwWMIVJ-eECCroLKU3iGI_WKPLq6cRP/view?usp=share_link) is not a mandatory field. So, it shows `No Date` option in date picker. On click, date will be removed.
- Does not allow `Excepted`,`Received` or `Sent` date less than tax return year. So date picker shows such [dates disable](https://drive.google.com/file/d/19EGl6qpdj-ieL6GicRmIIK-n9UbOeUaG/view?usp=share_link).
- When the status is changed from `Pending` to `Sent` or `Received`, `Sent` & `Received` date will be auto set to {current date + Tax return year}.
  - For e.g. If the user change the tax component status from `Pending` to `Sent` for the 2021 year tax return, the `Sent` & `Received` date will be set to `Current date` of the 2021 year (Nov 16, 2021).
- When status is changed from `Sent` or `Received` to `Pending`, `Sent` & `Received` date will be auto removed.
- When responsible is changed to `Pending`, status will be auto set to `Pending` and `Sent` & `Received` date will be auto removed.

### UI Rule
- Tooltip message for Pending status: `You can't change component’s status to Pending as federal return is already filed`
- Tooltip message for Pending Resposible: `You can't change component’s responsible to Pending from quick edit action`

[Mockups](https://drive.google.com/drive/u/0/folders/1hkjuujFG989e167dlarDHBDPQPlv-5yW) 