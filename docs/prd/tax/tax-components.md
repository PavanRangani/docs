# Tax Components

## Entity

### Component

#### Name
- It's a free form text field.

#### Section
- Select box of Section applicable for this Form. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents)

#### Document
- Select box of Section applicable for selected Section. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents) 

#### Expected Date
- Its date input field.
- Date should not be lower than year of the tax return.

#### Responsible
- Its a selected dropdown. 
- Possible values are: `Clarius`, `Client`, `CPA`, `Pending`. Default `Pending` is selected.

#### Sent Directly to CPA
- It's a checkbox. 
- Applicable only when `Responsible` is `Client`. By default, it is false.
- When the user marks the checkbox as True, `Received From` field will be hidden.

#### Received From
- Its free form text input field.
- Not applicable when `Responsible` is set to `CPA`.
- Not applicable when `Responsible` is `Client` and the value of `Sent Directly to CPA` is true

#### Status
- Possible values are: `Pending`, `Received`, `Sent`, `NA Current Year`. Default status is `Pending`.
- To set Tax return status `filed` all component status should be other than `Pending`
- When `Responsible` is set to `Pending`, Status is not applicable.
- `Received` status is not applicable when `Responsible` is set to `CPA` & `Client` 

#### Where to Send Notes
- Applicable only for `Clarius` responsible type.
- If a `Where to send Component` is available at the tax return level, it will be pulled here. User can't change from here.
- If no notes available at tax return level, show `-` here.

#### Received On
- Applicable only for `Clarius` responsible type.
- It's a date input field. 
- Applicable only when Status is `Received` or `Sent`. 
- Date should not be lower than year of the tax return.

#### Sent To
- Its a contact autocomplete dropdown. Applicable only when Status `Sent`. 
- If the tax return has `Tax component Send to` then that value will show prefill here.
- Not applicable when `Responsible` is set to `Pending` & `CPA`.
- If the `Responsible` is `Client` and the value of `Sent Directly to CPA` is true, `Sent To` field will be hidden.

#### Sent On
- It's date input. 
- Applicable only when Status `Sent`. Date should not be lower than year of the tax return.
- Not applicable when `Responsible` is set to `Pending`.

#### Final Year
- It's a checkbox. By default, it is false.

#### Notes
- Its a free form text input field.


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

### Disable Components Track

- Can be disabled anytime.
- On Disable, system ask for confirmation to user about all of the current components will be deleted
- On confirmation, all components will be deleted

### Enable Components Track

- Can be set Enabled from Disable anytime
- When enabled, system will auto create components based on last year as per [this](#auto-create-component-based-on-last-year)

## Master of Form wise section and documents 

### Individuals

| Form | Section name                             | Document name        |
| ---- | ---------------------------------------- | -------------------- |
| 1040 |                                          |                      |
|      | International Disclosures                |                      |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Schedule H: Household Employees          |                      |
|      |                                          | Other                |
|      |                                          | Summary              |
|      |                                          | W-2/W-3              |
|      |                                          | Worksheet            |
|      | Schedule E: Partnership / Flow Through   |                      |
|      |                                          | K1                   |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Non-Investment Income                    |                      |
|      |                                          | 1099-MISC            |
|      |                                          | 1099-OID             |
|      |                                          | 1099-R               |
|      |                                          | RE Tax               |
|      |                                          | SSA-1099             |
|      |                                          | Summary              |
|      |                                          | W2                   |
|      |                                          | Worksheet            |
|      | Schedule D: Capital Gains                |                      |
|      |                                          | 1099                 |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Schedule C: Sole Proprietorship / Options |                      |
|      |                                          | 1099                 |
|      |                                          | Other                |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Schedule A: Itemized Deductions          |                      |
|      |                                          | 1095-B               |
|      |                                          | 1098                 |
|      |                                          | 1099-R               |
|      |                                          | PP Tax               |
|      |                                          | RE Tax               |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Schedule F: Farming                      |                      |
|      |                                          | K1                   |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      | Schedule B: Interest and Dividends       |                      |
|      |                                          | 1099-R               |
|      |                                          | Summary              |
|      |                                          | W2                   |
|      |                                          | Worksheet            |
|      |                                          | 1099-INT             |
|      |                                          | 1099-DIV             |
|      |                                          | 1098-T               |
|      | Family Partenrship                       |                      |
|      |                                          | K1                   |
| 709  |                                          |                      |
|      | Part I - Gifts                           |                      |
|      |                                          | Financial Statements |
|      |                                          | Summary              |
|      |                                          | Worksheet            |
|      |                                          | WS                   |

### Joint

| Form | Section Name | Document Name                 |
| ---- | ------------ | ----------------------------- |
| 1041 |              | Same as Individuals 1040 form |

### Partnership

| Form               | Section Name               | Document Name        | 
| ------------------ | -------------------------- | -------------------- |
| 1065               |                            |                      |   
|                    | Contributions              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Partner K1's               |                      |      
|                    |                            | K1                   |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    | Distributions              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Fixed Assets               |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Balance Sheet              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    | Allocations                |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Member Information         |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Intangible Assets          |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Income Statement           |                      |      
|                    |                            | 1098                 |      
|                    |                            | 1099                 |      
|                    |                            | Financial Statements |      
|                    |                            | K1                   |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            | 
|                    | Family Partenrship         |                      |
|                    |                            | K1                   |     
| 1120-S             |                            |                      |      
|                    | Fixed Assets               |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Stock/Warrant Compensation |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Income Statement           |                      |      
|                    |                            | Financial Statements |      
|                    |                            | K1                   |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    | Partner K1's               |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Balance Sheet              |                      |      
|                    |                            | Financial Statements |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | 1099 Payments              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Officer Compensation       |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   | 
|                    | Family Partenrship         |                      |
|                    |                            | K1                   |      
| Disregarded Entity |                            |                      |     
|                    | Fixed Assets               |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Allocations                |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Partner K1's               |                      |      
|                    |                            | K1                   |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Distributions              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Balance Sheet              |                      |      
|                    |                            | Financial Statements |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Income Statement           |                      |      
|                    |                            | 1098                 |      
|                    |                            | 1099                 |      
|                    |                            | Financial Statements |      
|                    |                            | K1                   |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    | Intangible Assets          |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Member Information         |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Contributions              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | 1099 Payments              |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Officer Compensation       |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   |      
|                    | Stock/Warrant Compensation |                      |      
|                    |                            | Summary              |      
|                    |                            | Worksheet            |      
|                    |                            | WS                   | 
|                    | Family Partenrship         |                      |
|                    |                            | K1                   |      

### Foundation

| Form  | Section Name                             | Document Name |
| ----- | ---------------------------------------- | ------------- |
| 990PF |                                          |               |
|       | Part VI - Tax calculation                |               |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part I - Income Statement                |               |
|       |                                          | 1099-INT      |
|       |                                          | 1099-MISC     |
|       |                                          | Brokerage     |
|       |                                          | Gifts         |
|       |                                          | K1            |
|       |                                          | Quickbooks    |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part I - Minimum investment return       |               |
|       |                                          | Excel         |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part VIII - Expense detail               |               |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part II - Balance sheet                  |               |
|       |                                          | Brokerage     |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part VII - Informational questionnaire   |               |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part IX - Summary of direct charitable activities |               |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Part IV - Capital gain/loss detail       |               |
|       |                                          | Summary       |
|       |                                          | Worksheet     |
|       | Family Partenrship                       |               |
|       |                                          | K1            | 
 
### Estate

| Form | Section Name             | Document Name                       |
| ---- | ------------------------ | ----------------------------------- |
| 1041 |                          |                                     |
|      | Part III - Distributions |                                     |
|      |                          | Summary                             |
|      |                          | Worksheet                           |
|      | Part II - Distributions  |                                     |
|      |                          | Summary                             |
|      |                          | Worksheet                           |
|      | Part I - Income          |                                     |
|      |                          | 1099                                |
|      |                          | K1                                  |
|      |                          | Summary                             |
|      |                          | Trustee Information Letter          |
|      |                          | Worksheet                           |
|      | Family Partenrship       |                                     |
|      |                          | K1                                  | 
| 706  |                          | There is no any section or Document |

### Trust

| Form               | Section Name             | Document Name                     |
| ------------------ | ------------------------ | --------------------------------- |
| 1041               |                          | Same as above `Estates` 1041 form |
| 5227               |                          |                                   |
|                    | Part IV - Balance Sheet  |                                   |
|                    |                          | 1099                              |
|                    |                          | Summary                           |
|                    |                          | Worksheet                         |
|                    | Part I - Income          |                                   |
|                    |                          | 1099                              |
|                    |                          | K1                                |
|                    |                          | Summary                           |
|                    |                          | Trustee Information Letter        |
|                    |                          | Worksheet                         |
|                    | Part II - Deductions     |                                   |
|                    |                          | 1099                              |
|                    |                          | Summary                           |
|                    |                          | Worksheet                         |
|                    | Part III - Distributions |                                   |
|                    |                          | 1099                              |
|                    |                          | Summary                           |
|                    |                          | Worksheet                         |
|                    | Family Partenrship       |                                   |
|                    |                          | K1                                | 
| Disregarded Entity |                          |                                   |
|                    | Part I - Income          |                                   |
|                    |                          | 1099                              |
|                    |                          | K1                                |
|                    |                          | Summary                           |
|                    |                          | Trustee Information Letter        |
|                    |                          | Worksheet                         |
|                    | Part II - Deductions     |                                   |
|                    |                          | 1099                              |
|                    |                          | Summary                           |
|                    |                          | Worksheet                         |
|                    | Part III - Distributions |                                   |
|                    |                          | 1099                              |
|                    |                          | Summary                           |
|                    |                          | Worksheet                         |
|                    | Family Partenrship       |                                   |
|                    |                          | K1                                |



### Browse Tax Component

- If any of the components is not available then show the `No Components Found` message.
- Shows components in 6 tabs: `All`, `Pending`, `Received`, `Sent` & `NA Current Year`. 
- Shows a number of components (Pulled + Own + Auto create) with each tab.
- Allows selecting multi-select components. 
  - When multiple components are selected, shows `Edit`, `Received`, `Send` & `Delete` action from right to left order.
    - `Send` action is applicable only for `Pending` & `Received` status components.
    - `Received` action is applicable only for `Pending` status components.
    - `Delete` action is not applicable when auto create component is selected.
  - `Received` status is showing disable when 
  - When `Client`, `CPA` and `Pending` type components are selected in multi select mode, `Received` actions will be disable and it will show tooltip message.
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
    - Shows `Received on` date.
  - Sent 
    - Shows `Sent on` date.
  - Final Year
    - Shows checkmark if the `Final Year` checkbox is selected.
  - Notes
    - If a note is too long, show it in multiline.
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

- Tooltip message: `You need to remove Client/CPA/Pending components from the selection in order to perform this action`


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
    - `Received` status is not applicable for the the [`Client` & `CPA`](https://drive.google.com/file/d/1rxuEY__OVPC6376mNvpfNtiFDjMqD6C2/view?usp=share_link) types responsible.
    - [Pending](https://drive.google.com/file/d/148CO7b8_sHdsVIviP9m1lte55iSRXfhc/view?usp=share_link) status is shown disabled in dropdown for the Filed tax return. On hover, shows a tooltip with proper message.
    - `Received` status is applicable only for the `Client` type responsible. So if the component status is `Received`, quick action is not applicable for `Responsible`. 
- For  `Expected`, `Received` & `Sent`, opens [Date picker](https://drive.google.com/file/d/1dBbtoQaWWGuukAomGPFbXK5j9g8LbXJx/view?usp=share_link) controll
    - Quick edit for `Received` field not applicable when responsible is `Client` or `CPA` 
- When responsible is other than Pending, [Pending](https://drive.google.com/file/d/1txeAq-46SF_jy1nUQ57TE5Q1mfFCzTOP/view) option appears disabled in the quick change responsible dialog. On hover, shows tooltip message. Reason behind this is we do not want to set status to `Pending` from quick edit. Its still possible from Edit dialog.
- [Excepted date](https://drive.google.com/file/d/1lfwWMIVJ-eECCroLKU3iGI_WKPLq6cRP/view?usp=share_link) is not a mandatory field. So, it shows `No Date` option in date picker. On click, date will be removed.
- Does not allow `Excepted`,`Received` or `Sent` date less than tax return year. So date picker shows such [dates disable](https://drive.google.com/file/d/19EGl6qpdj-ieL6GicRmIIK-n9UbOeUaG/view?usp=share_link).
- When the status is changed from `Pending` to `Sent` or `Received`, `Sent` & `Received` date will be auto set to {current date + Tax return year).
  - For e.g. If the user change the tax component status from `Pending` to `Sent` for the 2021 year tax return, the `Sent` & `Received` date will be set to `Current date` of the 2021 year (Nov 16, 2021).
- When status is changed from `Sent` or `Received` to `Pending`, `Sent` & `Received` date will be auto removed.
- When responsible is changed to `Pending`, status will be auto set to `Pending` and `Sent` & `Received` date will be auto removed.

### UI Rule
- Tooltip message for Pending status: `You can't change component’s status to Pending as federal return is already filed`
- Tooltip message for Pending Resposible: `You can't change component’s responsible to Pending from quick edit action`

[Mockups](https://drive.google.com/drive/u/0/folders/1hkjuujFG989e167dlarDHBDPQPlv-5yW) 