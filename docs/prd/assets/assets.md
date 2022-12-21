# Assets

## Overview

- There are total 8 types of assets. For each type there are `Subtypes`.

| Type             | Subtype                                                      |
| ---------------- | ------------------------------------------------------------ |
| Airplane         |                                                              |
|                  | Floatplane, Hourly Card, Jet, Prop                           |
| Automobile       |                                                              |
|                  | Collectible, Floatcar, Primary                               |
| Equipment        |                                                              |
|                  | Primary                                                      |
| Horse            |                                                              |
|                  | Personal                                                     |
| Motorcycle       |                                                              |
|                  | Collectible, Primary                                         |
| Real Estate      |                                                              |
|                  | Additional Residence, Hangar, Investment, Primary Residence, Raw Land |
| Valuable Article |                                                              |
|                  | Art, Wine, Jewelry, Other, Musical Instruments               |
| Watercraft       |                                                              |
|                  | Power, Sailboat                                              |



#### Linked Insurance

If asset is linked with any `Insurance`, then that Insurance is called as `Linked Insurance`.

Asset can be linked at different type of Insurance at following places. Only current insurance policy relations are shown as Linked Insurances:

- Homeowners
  - Insured asset
  - Liability and Medical Payments Extensions
- Automobile & Motorcycle
  - Vehicles Covered
- Watercraft
  - Watercraft Covered
- Excess Liability
  - Underlying Exposures
  - Locations
  - Vehicles
  - Watercraft
- Small Business Insurance 
  - Insured Asset
- Catastrophic Events
  - Insured Asset
- Aircraft
  - Aircraft Physical Damage Coverage

#### Valuation

Valuation of asset is changes over the time. Each year its value is deprecated. So to track this information we have used `Valuation`. For e.g. If you purchase any car at $3,50,000, its valuation after one year can be approx $3,00,000, after two year $2,50,000.

To track this valuation changes, system allows to enter valuation data. User can enter Date, Value and Notes. 

Here Date means date on which asset is valued. Value means its value after depreciation. Notes can have any text notes.



### Transfer Asset

- Real life use case
  - Sunny transferred his home into a Trust.
  - Bob and Deb George will be transferring their homes into a Trust. 
- To handle above cases asset need to removed from one entity and needs to be added to another manually
- To solve that problem we have introduced feature to transfer asset from one legal entity to another legal entity

- Assets can be only transferred to another legal entity of the same family.



## Entity Info

Assets has some common field and some type specific field.

#### Some Common fields

| Field name      | Description                                                  |
| --------------- | ------------------------------------------------------------ |
| Name (*)        | Name field is mandatory.                                     |
| Type*           | Its a disable field.                                         |
| Subtype (*)     | It's a mandatory field. It's a selected dropdown of type and its depends on the Type.<br /> |
| Purchase Date   | Its a date input field. It shows the purchase date of asset. Future date is not allowed.<br />When any valuation record is available, Purchase Date should be lower than the record with smallest valuation date. For e.g. At the time of creation Purchase Date was blank. Now user enters valuation record with date `08/05/2018`. Now when user tries to enter Purchase Date, it should be smaller than `08/05/2018` |
| Purchase Price  | Default value is `$0`. Decimal is not allowed.               |
| Notes           | Free form multiline text field.                              |
| Date            | Valuation date of the asset. It's a date input field and mandatory field.<br />It should be higher than `Purchase Date` if its available. |
| Values          | Valuation values of the asset. It's a mandatory and amount input field. Default value is `$0`. Decimal is not allowed. |
| Notes           | Valuation notes of the asset. Its a free form text input field. |
| Dispose Date(*) | Date on which assets is dispose.<br />                       |
| Disposal Price  | The price at which assets is Sold/Disposed. Default value is `$0`. Decimal is not allowed. |
| Transfer Date*  | It's a mandatory and date input field. <br />If the asset has a `Purchase Date` then `Transfer Date` should always be equal to or greater than the `Purchase Date` otherwise user can add any data to the `Transfer Date`. |
| Transferred To* | Its an auto-complete dropdown of the active legal entity of the asset's owners family. Its mandatory field. Source legal entity doesn't show in this dropdown. |

#### Some Type specific fields

| Type Name   | Field name          | Description                                       |
| ----------- | ------------------- | ------------------------------------------------- |
| Airplane    |                     |                                                   |
|             | Registration Number | free form text field.                             |
|             | Serial Number       | free form text field.                             |
| Automobile  |                     |                                                   |
|             | State               | State drop down. shows state of USA and Canada.   |
|             | VIN                 | free form text field.                             |
|             | License Number      | free form text field.                             |
| Equipment   |                     |                                                   |
|             | Serial Number       | free form text field.                             |
| Motorcycle  |                     |                                                   |
|             | State               | State drop down. shows state of USA and Canada.   |
|             | VIN                 | free form text field.                             |
|             | License Number      | free form text field.                             |
| Real Estate |                     |                                                   |
|             | Legal Description   | Multiline text input field.                       |
|             | Tax Parcel          | Multiline text input field.                       |
|             | Address 1           |                                                   |
|             | Address 2           |                                                   |
|             | City                | City drop down.                                   |
|             | State               | State drop down. shows state on based on country. |
|             | Zip                 | Zip input                                         |
|             | Country             | Country drop down. Default value will be USA.     |
| Watercraft  |                     |                                                   |
|             | HIN                 | Free form text field.                             |

- For `Horse` and `Valuable Article` there isn't any extra fields. (It has only common fields)



## Add Asset

### UX Rule

- `Purchase Date` is not a future date otherwise system shows error message. 

- In valuation record,
  - Allows to enter more than one valuation record.
  - Shows proper message when no valuation available.
  - Date can't be lower than `Purchase date` (Purchase date of Asset).
  - When `Purchased Date` is not available, it allows to enter a valuation date without any validation. (This will be required when Purchase date of Asset is not known and we want to add valuation record)

### UI Rule

[Mockups of Add dialog](https://drive.google.com/file/d/1qH5YrCrKR3Cs2YADRt2yz0Xqqlby17MO/view?usp=sharing)

- Error message for `Purchase Date` is future date: `Should be <= {current date}`
- Placeholder message: `No Valuation Available` 
- Error message when valuation `Date` is lower than `Purchase date`: `Date must be >= purchase date`
- Error message when `Purchase Date` is greater than any of the `Valuation Date`: `Should be <= oldest valuation date`.



## Edit Asset

### System Rule

- Can be editable anytime.

### UX Rule

- For Valuation records, show already added records in the ascending order of `Date`.

### UI Rule

[Mockup](https://drive.google.com/file/d/17S152JZSIfJZTOuP8tTxrNHXQBsF-V_B/view?usp=share_link)



## Delete Asset

### System Rule

- If asset is linked with any `Banking` or `Insurance`, delete is not allowed.

### UX Rule

- When asset is not linked anywhere it shows normal delete confirmation dialog.
- When asset is linked somewhere it shows Delete not possible dialog with details of its relations.
- During Multi delete, When one of the selected asset is referenced anywhere, then we simply deny the action. User need to manually delete individual asset.

### UI Rule

[Mockup of Delete confirmation dialog](https://drive.google.com/file/d/1G_ysNu21UsMcOpuh9TLqCluMniAwBkIp/view?usp=sharing)

[Mockup of delete not possible dialog](https://drive.google.com/file/d/1jyx-CCQxbVQyYcKgDN2xjB7okZrPdGpm/view?usp=share_link)


## Transfer Asset

### System Rule

- Only Active asset can be transferred.
- If the asset is added to an active banking, asset will not be transferred. 

### UX Rule

- At the time of transfer, it asks for `Transfer Date` date and `Transferred To` legal entity.
  - If the current asset has a `Purchase Date`, the `Transfer Date` date should always be equal to or greater than the Purchase Date. If the asset does not have a `Purchase Date` then the user can add any date to the `Transfer Date`.
  - Only show the Active legal entity of the Assets family (Asset's Owners Family) in the Transferred To field. And Source Legal entity does not come in Transferred To field dropdown.
- Assets can be linked with many types of Banking. In Banking, the asset field allows to select only assets of the same legal entity.
  - If an asset is linked in active Banking, it doesn’t allow to transfer. If it's linked with Disposed Banking, transfer is allowed.
- Assets can also be linked to Insurance. Asset field in insurance allows to select assets of any legal entity of the same family.
  - Suppose an asset is linked in Insurance. When that asset is transferred to any other legal entity, it will remain linked with existing insurance as it is after the transfer.
  - Once Asset is transferred, Insurance Carrier will also transfer with that Asset.

- If asset is not transferred then show transfer not possible dialog.

### UI Rule

[Mockup](https://drive.google.com/file/d/17squ28FwCyUT-aRB4wvceXByyQ8nI4je/view?usp=share_link)

- `Transfer not Possible` dialog. [See this](https://drive.google.com/file/d/101hjwJlnVFVfNptOgBWxDzvADN10E1h1/view)



## Dispose Asset

### System Rule

- Only Active assets can be disposed

### UX Rule

- Once the asset is disposed then it moves from `Active` tab to `Disposed` tab.

### UI Rule

[Mockup](https://drive.google.com/file/d/1Zt0BYXmLoTIqlHkxudXFADL90mJZbXql/view) 



## Restore Asset

### System Rule

- Only Disposed assets can be restored.

### UX Rule

- Once the asset is Resorted then it moves from `Disposed` tab to `Active` tab.
- Show toast message of success on action of `Restore`.

### UI Rule

Toast message is: `Restored Successfully`.



## Export as PDF

### UX Rule

- Show PDF icon on the header of all tabs. On click, the pdf file will be downloaded.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- File name:
  - Current tab: `assets-of-{legal entity name}.pdf`
  - Dispose tab: `disposed-assets-of-{legal entity name}.pdf`
  - Transfer tab: `transferred-assets-of-{legal entity name}.pdf`
- Sorting order of all types of assets except valuable articles is the same as Browse page sorting
- In application sorting order is like as this. But we don't have shown the Subtype column in downloaded pdf file. That is why the order of valuable articles is different from the application.
  - Sorting order in PDF: Primary sorting on Entity type in sequence - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type and secondary sorting on asset name.

**Note:** Some of the columns are not applicable for a particular report because we wanted to accommodate the report in portrait mode (Based on Keith's suggestion).

- Subtype column is not applicable for all reports.
- Notes column is not applicable for the current assets report.
- Insurance Carrier column is not applicable for disposed assets report.

Sample PDF 
- [Current paage](https://drive.google.com/file/d/1rsV7RW6wjek96Eafgf88Ivkp7vBQb0ou/view?usp=share_link)
- [Disposed page](https://drive.google.com/file/d/1qpeA7Ipp-ddpQzz-BM2KLq8H0IJySzBs/view?usp=share_link)
- [Transferred page](https://drive.google.com/file/d/1w67KCLP1V8cb5yRBT5BtHl7cWUyO12k_/view?usp=share_link)



## Pull Assets to Owners

### System Rule

- Applicable only for `Partnership` and `Trust` type legal entities.

### UX Rule

- Shows `Pull Asset to Owners` switch. This switch is applicable for all tabs.
- Default its value is `No`. User can able to change it as per required.



## Browse Asset

### UX Rule

- Show proper message when no records available for any tabs.

- Show count of record with each tabs.

- For each subtype shows separate table. Position of each subtype table is in alphabetical order except Valuable articles. Shows Table of Valuable article always at last.

- Assets of Associated Partnership or Associated Trust will be only pulled to Individual, Estate, Foundation, Trust page if `Pull Assets to Owners` value is Yes for that Partnership and Trusts (Regardless this entities is Terminated). Otherwise those assets of Partnership/Trust won't be pulled even if that Individual, foundation, Trusts, Estate is associated with that Partnership/Trust.

  > Individual is associated with two partnership P1 and P2. `Pull Assets to Owners` value of P1 is `Yes` and for P2 its `No` . It means assets of P1 will be shown in asset page of this Individual/Joint but assets of P2 won't be shown in asset page of Individual/Joint
  >
  > Individual is associated with two trusts T1 and T2. `Pull Assets to Owners` value of T1 is `Yes` and for T2 its `No` . It means assets of T1 will be shown in asset page of this Individual/Joint but assets of T2 won't be shown in asset page of Individual/Joint

- For Individual, Estate or Foundation, this page also shows the assets which are owned by the Associated `Partnership` or `Trusts`

  > For e.g. Individual is associated in one Partnership and that partnership has some assets. So those assets will also be shown in browse page of Individual. Same way if Individual in association with any trust and that trust has some assets, those assets will be shown in Assets page of Individual

- For Joint, List page shows records for Joint & Both Individuals in same page. Here, Assets of Individual will also include any Assets of Associated Partnership or Trust of that Individual.

  > In `Assets` tab for Joint `Tom and Judi`, it will display any assets owned jointly and also any assets that they may own individually (`Tom` or `Judi`). This page will also shows asset of Partnership or Trust where Tom and Judi is in association.

- For Partnership, It shows only those assets by that legal entity.

- For Trusts, list page shows assets which is owned by this Trust and assets of any partnership where this trust is owner. 

- In list page, with each record shows the name of the owner entity. In joint page, If owner of the record is Joint it shows `Joint`, If owner of the record is Individual, Partnership or Trust shows name of that entity.

- **Sorting order**
  - Under each table except Valuable Article
    - Primary sorting on Entity type in order of - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type.
    - Secondary sorting on alphabetical order of Asset Name
  - Under Valuable Article
    - Primary sorting on `Subtype` and secondary sorting on Entity type in order of - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type.
    - Tertiary sorting on alphabetical order of Asset name.

#### CURRENT

- Current assets will be shown in the `Current` tab.

- Column name: `Entity`, `Name`, `Subtype`, `Purchase Date`, `Purchase Price`, `Current Value`, `As of`, `Insurance Carrier` & `Notes`
  - `Entity` column is not available for the Partnership.
  - `Current Value` is value of latest valuation record.
  - `As of` is date of latest valuation record.
  - When no records available for Valuation, `Purchase price` is shown as `Current Value` and `Purchase date` is shown as `As Of` (Only if Purchase price and Purchase date is available, otherwise it will be blank)
  - `Insurance Carrier` column will show the type of Insurance in the bracket like `{Insurance Nickname {Insurance Type}}`. For e.g. `Umbrella Policy (Excess Liability)`
- When any column has no records then shows dash (-)
- On hover, show hover effect and vertmore menu action at right side. On click, open view dialog.
- Vertmore action: `Edit`, `Dispose`, `Transfer` & `Delete`.

#### DISPOSED

- Dispose assets will be shown in the `Disposed` tab.

- Column name: `Entity`, `Name`, `Subtype`, `Purchase Date`, `Purchase Price`,  `Insurance Carrier`, `Dispose Date`, `Disposal Price` & `Notes`
  - `Insurance Carrier` column will show the type of Insurance in the bracket like `{Insurance Nickname {Insurance Type}}`. For e.g. `Umbrella Policy (Excess Liability)`
  - `Entity` column is not available for the Partnership.
- When any column has no records then shows dash (-)
- On hover, show hover effect and vertmore menu action at right side. On click, open view dialog.
- Vertmore action: `Restore` & `Delete`.

#### TRANSFERRED

+ Transferred assets will be shown in the `Transferred` tab.

- Column name: `Entity`, `Name`, `Subtype`, `Transfer To` & `Notes`
  - `Entity` column is not available for the Partnership.
- When any column has no records then shows dash (-)
- On hover, show only hover effect. No action available. (Edit, Delete, Dispose action won't be available.)

- On click, open view dialog.

### UI Rule

Mockup of [Current tab](https://drive.google.com/file/d/1hAWNGneq6IQE8YCJGUFEsFX41dUrDRhS/view?usp=share_link)

Mockup of [Disposed tab](https://drive.google.com/file/d/1bQbAjwfXtM87MCb5tEtOCrHaROsBz6rH/view?usp=share_link)

Mockup of [Transferred tab](https://drive.google.com/file/d/1ENJc6MMgLVih-Glta6IeVcaoRzv2-m73/view?usp=share_link)

Placeholder message when no asset available: `No Assets Found`.



## View Asset dialog

### UX Rule

- Shows latest value from valuation record under `Current Value (As of)`
- Shows valuation records as table
  - Column: Date, Value and Notes
  - Notes is shown in multiple line
  - Records are shown in ascending order of the date (Latest record is shown at bottom)

### UI Rule

[Mockup](https://drive.google.com/file/d/1rTG99E8XA6aH_tNsB697oHoCAtVCuUha/view?usp=share_link)


### Known Case

- If an entity has an asset transferred from another entity, that entity cannot be deleted.
  - Ex. If an asset of `Individuals 1` is transferred to another entity `Trust 1` for the same family. Now user deletes the `Trust 1` entity but that entity `Trust 1` is not deleted, because the asset of `Individuals 1` is linked with `Trust 1`. So the system will restrict to delete `Trust 1` entity.
