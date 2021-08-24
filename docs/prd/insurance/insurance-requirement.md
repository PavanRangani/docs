# Insurance

## Add

- Insurance can be added only after filling all mandatory fields
- For different types, mandatory fields are different. See this [page](./insurance-entity.md) for details of mandatory fields for each type

### UI requirements

Mockup

- When user initiate add action, user needs to select insurance type first. Once user selects insurance type it opens add dialog for selected type. Mockup of [Selection of Insurance type](https://drive.google.com/file/d/1np0bEycE4dHiOPbVKvwKUXd5dyo8klEe/view) dialog
- Default selection will be on `Homeowners` is selected under `Property and Casualty`
- When user enters `Issue date`, System prefills Expiry date. It will be set to  `next year date of Issue date` - 1 day. 
- `Issue date` should be lower than `Expiry date`, other wise shows error `Should be later than issue date` error in `Expiry date` field

[Mockup of Add dialog](https://drive.google.com/file/d/1LirlQHgzMjosABVogdYtb6swdJZNSHKQ/view)

#### Valuable Articles

- For valuable articles, under Policy limits shows all Article types 
- Possible Article Types
  - Art
  - Jewelry
  - Wine
  - Musical Instrument(s)
  - Other
- For each article type user can either select `Blanket` or `Itemized`  
- When user select Blanket type, user can manually enter values.
- But when user selects Itemized, system pulls current value data of all assets of selected type and shows it here. Its not editable.
  - For e.g. When user selects Itemized for Arts, system pulls current valuation of all Vauable Article assets whose type is ART and shows its current value sum in Insured value field.

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScfKBntr_haNHh2Gdsx1zS1w)

#### Scenarios for Valuable Article

##### Create

When Valuable Article policy is created with itemized for Article type, it shows 

Suppose you have 5 jewelery type assets each having $500 as current value. So now when you create valuable article policy with Itemized for Jewellery, it will show total $2500.

##### Add new asset

You have already created policy as above and now new asset of type Jewellery is added with current value of $500.

View page: So now when you open view page of above created policy, it will still show $500 for Jewellery. Newly added asset won't be reflected there.

Edit dialog: Same way if you open Edit dialog of above policy, it will still show $500 for Jewellery. Newly added asset won't be reflected there.

##### Renew policy

When you Renew policy, it will show itemized or blanket for Article type  same as original policy. Blanket value will remain as it is. But Itemized value will be changed, it will include newly added asset and it shows total value as $3000.

## SAVE AS DRAFT

- While adding new insurance if you have filled partial details  but you want to save your work then you can  use SAVE AS DRAFT
- It allows user to save insurance without filling any mandatory fields.
- For Insurance in DRAFT mode, DISPOSE & RENEW is not allowed

## Renew

- Should be used when insurance needs to be renewed
- On Renew
  - System prefill `Issue date` as  `last poilicy expiry date + 1 day` and `Expiry date` as `next year date of Issue date` - 1 day. 
  - Allows to change `Issue date` and `Expiry date` if required
  - Asks for `Premium` amount
  - All other details of policy will be prefilled from last policy. Allows user to change any details if required.
  - During renew doesn't allow to change `Insured Asset` or `Account Nickname` 
- System maintains history of renewals
- For DRAFT insurance, renew is not possible

#### Term life

For Term life Renew behaviour is slightly different than other types.

When user will perform Renew action for Term life, expiry date will remain as it is, issue date will become same as current renewal date, and Renewal date will be prefilled with `issue date + 1 year`

`Renewal Date` for term life insurance will be longer than the `Issue Date` and shorter than the `Expiry Date`, other wise shows error `Should be later than issue date` or `Should be lower than expiry date` error in Renewal date field 

For e.g. You have added one policy with issue date - 01/01/2019, renew date - 12/31/2020 and expiry date - 12/31/2029. Now when you click on Renew, the system will set the issue date to 01/01/2020 and renew date to 12/31/2021. Expiry date will remain as it is to - 12/31/2029

#### Valuable Articles

- For Valuable Articles, all existing article type from previous policy will be shown as it is. For Blanket existing value will be copied. But for Itemized, system will pull current valuation and show its total.

### UI Requirement

Renew dialog will be same as add dialog of insurance

Dialog title: `Renew: Insurance | {Subtype}`

## Update

- Current insurance or any insurance from history can be updated anytime

### UI Requirement

Edit dialog will be same as add dialog of insurance

Dialog title: `Edit: Insurance | {Subtype}`

## Delete

- Insurance can be deleted anytime

## Dispose

- Insurance can be disposed anytime
- DRAFT insurance can not be disposed
- Show toast message of success on action of `Dispose`.

#### UI Rule

- Toast message is: `Disposed Successfully`.

## Restore

- Only `Disposed` insurance can be restored.
- Show toast message of success on action of `Restore`.

#### UI Rule

- Toast message is: `Restored Successfully`.



## Browse insurance

For Individual, Foundation and Estate shows the Insurance of selected legal entity.

#### For Joint

For Joint shows all the insurance policies of Joint and in addition to it, shows Health insurance and Life insurance policies of both individuals . For Property and Casualty type, individual's policies won't be shown in this page (Reason is in such policy assets can be multiple and those assets can be from Individual or Joint)

In list page of Joint, with each record shows the name of the owner entity. If owner of the record is Joint it shows `Joint` and if owner of the record is Individual it shows the name of the person.

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCE55fxq78DfBmp-Oe4g1TlT)

#### For Partnership and Trusts

For Partnership and Trusts shows all the insurance policies of selected Partnership or trust and in addition to it, shows any policy in which current `Partnership` or `Trust` is added as `Additional Insured` (Reason is Individual purchase assets on name of Partnership or Trust for confidentiality but insurance policy of the property is always on name of Individual or Joint. Policy is never on the name of Partnership or Trust ) Additional Insured field is available at Homeowners, Watercraft and Excess Liability type of policies. So such policies of Individual or Joint can come in this page.

In list page of Partnership and Trusts, with each record shows the name of the owner entity. If owner of the record is Partnership or Trust, shows its name. If owner of the record is Joint it shows `Full name` of that Joint (for e.g. Tom and Judi) and if owner of the record is Individual shows `Full Name` of that Individual.



- Allows to browse all insurance of any legal entity
- Shows ACTIVE and DISPOSED insurance in separate tabs
- Shows count with each tab title
- In both tab, records are shown in 3 tables: Life Insurance, Health Insurance, Property and Casualty 
- When there isn't any record available for any particular type, its table wont' be shown

### UI Requirements

[Mockup](https://drive.google.com/file/d/1OBofPX07v358OT2GyOJF2KGwrye6yGD0/view)

- Columns in each table: 
  - Coverage Type
  - Account Nickname
  - Insured
  - Insurance Carrier
  - Policy Number
  - Annual Premium
  - Policy Expiration
- Sorting: Alphabetical, Primary on `Coverage Type` and Secondary on `Account Nickname`
- On click of vertmore icon of table, starts its selection mode of table.
  - When single record is selected, shows `Edit`, `Renew` `Dispose` & `Delete` action from right to left order.
  - When multiple records are selected, shows `Dispose` & `Delete` action from Right to left order. `Delete` will be shown in gray colour.
- When Policy Expiration date is already passed, it shows in red colour
- When multiple insured is available, shows each `Insured` in new line
- If insurance is saved as `Save as Draft`, then `Draft` tag will show in the `Account Nickname` column
- On hover of any record shows vertmore icon. 
  - Vertmore actions:  `Edit`, `Renew`, `Dispose` & `Delete`. `Delete` is shown in red colour.
  - For `Disposed` record, `Renew` action is not available
- On mouse hover of any record shows hover effect
- On click of any record opens its view page.

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSccML1aHWLbFoo3IUzCjO1Oo)

### Sorting on Insurance page where Insurance of other legal entities are pulled 

- In Insurance page of Joint, Partnership and Trusts other legal entities policies can come. So its sorting is slightly different compared to rule above mentioned
- In such page, there will be one new column `Entity` which will show the name of the owner legal entity of that policy

- Under Property and Casualty, Health insurance and Life insurance table
  - Primary sorting on Entity in sequence - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type
  - Secondary sorting on ‘Coverage type’
  - Third sorting on ‘Account Nickname’

## View insurance

[Mockup](https://drive.google.com/file/d/1rCCTGDDx-tCMsg4sjaQcaWEYiQJ4GwHU/view)

### UI Requirement

- Shows all details of insurance
- Insurance with Latest Issue date is shown under `CURRENT` 
- Other policies are shown in `HISTORY`. 
- When there isn't any renewal policy HISTORY tab is not shown
- Shows links for fields: Carrier, Insurance Agent, Insured,  any contact field , any asset field.  On click of that link opens view dialog or view page for that entity
- When Insurance is DISPOSED, it shows DISPOSED tag in header
- When Insurance is in DRAFT, it shows DRAFT tag in header

### Browse history of any insurance

[Mockup](https://drive.google.com/file/d/1lMdtee3hg0kziNkN0coXkMDuzLrVchVD/view)

- All policies other than Current is shown in history
- Shows policies in table
- Columns: Issue Date, Expiry Date, Premium, Notes
- Sorting: Descending order of Issue Date
- On mouse hover of any record shows hover effect and vertmore icon. 
  - Vertmore actions:  `Edit` & `Delete`. `Delete` is shown in red colour.
- On click of any record shows details of that policy in [view dialog](https://drive.google.com/file/d/1o72FMEzaHKoQpJth9vDWqMIBkaPIVRCz/view)
