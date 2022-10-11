# Tax Components

## Entity

### Component

| Field Name    | Description                                                  |
| ------------- | ------------------------------------------------------------ |
| Name          | Free form text field                                         |
| Section       | Select box of Section applicable for this Form. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents) |
| Document      | Select box of Section applicable for selected Section. See [Master of Form wise section and documents](#master-of-form-wise-section-and-documents) |
| Expected Date | Date input. Date should not be lower than year of the tax return |
| Responsible   | Possible values are: `Clarius`, `Client`, `CPA`. Default `Clarius` is selected. |
| Sent Directly to CPA | It's a checkbox. Applicable only when `Responsible` is `Client`. By default, it is false. |
| Received From | Its free form text input field.<br />If the `Responsible` is `Client` and the value of `Sent Directly to CPA` is true, `Received From` field appears disabled.<br />If the `Responsible` is `CPA`, `Received From` field appears disabled. |
| Status        | `Pending`, `Received`, `Sent`, `NA Current Year`<br />Default status is `Pending`. To set Tax return status filed all component status should be other than `Pending` |
| Where to send Notes | By default, it's a disabled field. If a `Where to send Component` is available at the tax return level, it will be pulled here. User can't change from here. |
| Received      | Date input. Applicable only when Status is `Received` or `Sent`. Date should not be lower than year of the tax return |
| Sent to       | Contact Autocomplete. Applicable only when Status  `Sent`<br />If the tax return has `Tax component Send to` then that value will show prefill here.<br />If the `Responsible` is `Client` and the value of `Sent Directly to CPA` is true, `Received From` field appears disabled.<br />If the `Responsible` is `CPA`, `Received From` field appears disabled. |
| Sent On       | Date input. Applicable only when Status  `Sent`. Date should not be lower than year of the tax return |
| Final Year    | `True` or `False`.                                           |
| Note          | Multiline field                                              |



## System Requirement

### Auto create component based on last year

- When Tax return is created , System auto creates components based on available latest year return of selected form whose status is `Filed` in system. For Disregarded Entity tax return, status is not applicable so auto creation will work regardless of its status. 
- If tax component is disabled in last year, No components will be created and for this return also it will set to disabled.
- If tax component is not disabled in last year, system creates components same as last year
  - All of the components will be in `Pending` status
  - Components whose `Final year` = `True` won't be created
  - For Disregarded Entity, system will auto create all components same as last year regardless of status of Components (Here it means it will create new components even its status is pending in last year) (Just to be clear If I go back in last year tax return and create a new components then it won't be added to the current year tax component).

### Create Components

- When tax return status = filed, Doesn't allow to create new component with status pending 
  - Shows error : `You can't add component with pending status as federal return is already filed`
  
**Disregarded Entities Tax Components**
  - For Partnership, If a individual's of SSN tax return is already filed, component can't be added with pending status otherwise system show error message.
    - Shows error: `You can’t add component with Pending status as Individual’s tax return is already filed`
  - For Trust, If a grantor's tax return is already filed, component can't be added with pending status otherwise system show error message.
    - Shows error: `You can’t add component with Pending status as Grantor’s tax return is already filed`

### Edit Component

- Allows to change any details
- Doesn't allow to change status to `Pending` once tax return is Filed
  - Shows error: `You can't change component's status to pending as federal return is already filed`
  - This error is not applicable for the `Disregarded Entity`.

### Delete

- Can be deleted anytime

### Disable Components Track

- Can be disabled anytime.
- On Disable, system ask for confirmation to user about all of the current components will be deleted
- On confirmation, all components will be deleted

### Enable Components Track

- Can be set Enabled from Disable anytime
- When enabled, system will auto create components based on last year

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

| Form   | Section Name               | Document Name        |      |
| ------ | -------------------------- | -------------------- | ---- |
| 1065   |                            |                      |      |
|        | Contributions              |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Partner K1's               |                      |      |
|        |                            | K1                   |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        | Distributions              |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Fixed Assets               |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Balance Sheet              |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        | Allocations                |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Member Information         |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Intangible Assets          |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Income Statement           |                      |      |
|        |                            | 1098                 |      |
|        |                            | 1099                 |      |
|        |                            | Financial Statements |      |
|        |                            | K1                   |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
| 1120-S |                            |                      |      |
|        | Fixed Assets               |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Stock/Warrant Compensation |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Income Statement           |                      |      |
|        |                            | Financial Statements |      |
|        |                            | K1                   |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        | Partner K1's               |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Balance Sheet              |                      |      |
|        |                            | Financial Statements |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | 1099 Payments              |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |
|        | Officer Compensation       |                      |      |
|        |                            | Summary              |      |
|        |                            | Worksheet            |      |
|        |                            | WS                   |      |

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
| 706  |                          | There is no any section or Document |

### Trust

| Form | Section Name             | Document Name                     |
| ---- | ------------------------ | --------------------------------- |
| 1041 |                          | Same as above `Estates` 1041 form |
| 5227 |                          |                                   |
|      | Part IV - Balance Sheet  |                                   |
|      |                          | 1099                              |
|      |                          | Summary                           |
|      |                          | Worksheet                         |
|      | Part I - Income          |                                   |
|      |                          | 1099                              |
|      |                          | Summary                           |
|      |                          | Worksheet                         |
|      | Part II - Deductions     |                                   |
|      |                          | 1099                              |
|      |                          | Summary                           |
|      |                          | Worksheet                         |
|      | Part III - Distributions |                                   |
|      |                          | 1099                              |
|      |                          | Summary                           |
|      |                          | Worksheet                         |



### Browse Tax Component

- If any of the components is not available then show the `No Components Found` message.
- Shows components in 6 tabs: `All`, `Pending`, `Received`, `Sent` & `NA Current Year`. 
- Shows a number of components (Pulled + Own) with each tab.
- Allows selecting multi-select components. 
  - When multiple components are selected, shows `Edit`, `Received`, `Send` & `Delete` action from right to left order.
    - `Send` action is applicable only for `Pending` & `Received` status components.
    - `Received` action is applicable only for `Pending` status components.
- During multi selection action `Send` & `Receive`, if status of any of the selected component is already `Sent` or `Received`, it won't be shown in dialog.
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
- On hover of each record, shows hover effect and vertmore action menu on the left side.
  - Vertmore actions: `Edit` & `Delete`.
- On click of each component, opens view dialog.
- For `1040` form, it shows the tax components of the disregarded entities. [See more details](./pull-disregarded-entities-tax-components.md#system-rule)
- Allows to qucik action from list page. [See more details](#quick-edit-action-from-list-page-of-component)

## UI Requirements

[Mockups of 1040 form](https://drive.google.com/file/d/1rhJptjfrtWNGRd7Sw0Ld5xOEH3XT5VLB/view?usp=sharing)

[Mockup of other form](//TODO)


### View Component

### UX Rule

- Shows `Sent Directly to CPA` & `Received from` & `Send to` option only when its applicable.
- Allows to qucik action from view dialog. [See more details](#quick-edit-action-from-list-page-of-component)

### UI Rule

[Mockup](https://drive.google.com/file/d/1w1i-kWyTrzZRNuiSkYT6FVIacpqOuFsM/view?usp=sharing)


## Quick Edit Components from Browse page or View dialog
- Allows to quick edit some of the fields of components from Browse page or view dialog without Edit action of component
- Shows edit icon on hover of the `Status`, `Responsible`, `Expected`, `Received` & `Sent` with the values.
- This quick actions are applicable for all tabs in browse page
- Quick action is perform from browse page and View dialog of Component.
  - For `Status` & `Responsible`, opens select dropdwon of Status or Responsible.
  - For  `Expected`, `Received` & `Sent`, opens Date picker controll
- `Excepted date` is not a mandatory field. So, shows `No Date` option in date picker. On click, date will be removed.
- Does not allow `Excepted`,`Received` or `Sent` date less than tax return year. So calendar controll shows such dates disable.
- When the status is changed from `Pending` to `Sent` or `Received`, `Sent` & `Received` date will be auto set to current date.
- When status is changed from `Sent` or `Received` to `Pending`, `Sent` & `Received` date will be auto removed.