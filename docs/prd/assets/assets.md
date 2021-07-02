# Assets

## System Requirement

- There are total 8 types of assets.
- Type specific fields depends on `Type`. it has nothing to do with `SubType`
- Assets has some common field and some type specific field.
- For each type there are `Subtypes`. 
- Supported actions `Create`, `Edit`, `Delete`, `Dispose`, `Transfer`.

### Entity

#### Common fields

| Field name     | description                              |
| -------------- | ---------------------------------------- |
| Name (*)       | Name field is mandatory.                 |
| Type(*)        | Possible types:<br />Airplane, Automobile, Equipment, Horse, Motorcycle, Real Estate, Valuable article, Watercraft |
| Subtype (*)    | Subtype field is mandatory. Subtype depends on the Type<br /><br />For Type `Airplane` possible Subtypes are `Floatplane,  Hourly Card, Prop, Jet`<br /><br />For Type `Automobile` possible Subtypes are `Collectible, Floatcar, Primary`<br /><br />For Type `Equipment` possible Subtypes are `Primary`<br /><br />For Type `Horse` possible Subtypes are Horse `Personal`<br /><br />For Type `Motorcycle` possible Subtypes are ``Collectible, Primary`<br /><br />For Type `Real Estate` possible Subtypes are ` Additional Residence, Hangar, Investment, Primary Residence, Raw Land`<br /><br />For Type `Valuable Article` possible Subtypes are `Art, Wine, Jewelry, Other, Musical Instruments`<br /><br />For Type `Watercraft` possible Subtypes are `Power, Sailboat`<br /><br /> |
| Purchased On   | Date of Purchase. Future date is not allowed.<br />When any valuation record is available, Purchased On should be lower than the record with smallest valuation date. For e.g. At the time of creation Purchased on was blank. Now user enters valuation record with date `08/05/2018`. Now when user tries to enter Purchased on, it should be smaller than `08/05/2018` |
| Purchase Price | Default value is `$0`. Decimal is not allowed. |
| Notes          | Free form multiline text field.          |
| Disposed On(*) | Date on which assets is dispose.         |
| Disposal Price | The price at which assets is sold/Disposed. Default value is `$0`. Decimal is not allowed. |
| Valuation      | Valuation of this asset over the time. Valuation of asset is deprecated at each year. So to track its valuation this can be used. <br /><br />User can enter Date, Value and Notes.<br />Here Date means date on which its valued. Value means its value after depreciation. Notes can have any text notes.<br />Date should be higher than `Purchased On` if its available. |

#### Type specific fields

| Type Name   | Field name          | Description                              |
| ----------- | ------------------- | ---------------------------------------- |
| Airplane    |                     |                                          |
|             | Registration Number | free form text field.                    |
|             | Serial Number       | free form text field.                    |
| Automobile  |                     |                                          |
|             | State               | State drop down. shows state of USA and Canada. |
|             | VIN                 | free form text field.                    |
|             | License Number      | free form text field.                    |
| Equipment   |                     |                                          |
|             | Serial Number       | free form text field.                    |
| Motorcycle  |                     |                                          |
|             | State               | State drop down. shows state of USA and Canada. |
|             | VIN                 | free form text field.                    |
|             | License Number      | free form text field.                    |
| Real Estate |                     |                                          |
|             | Legal Description   | Multiline text input field.              |
|             | Tax Parcel          | Multiline text input field.              |
|             | Address 1           |                                          |
|             | Address 2           |                                          |
|             | City                | City drop down.                          |
|             | State               | State drop down. shows state on based on country. |
|             | Zip                 | Zip input                                |
|             | Country             | Country drop down. Default value will be USA. |
| Watercraft  |                     |                                          |
|             | HIN                 | Free form text field.                    |

- For `Horse` and `Valuable Article` there isn't any extra fields. (It has only common fields)

### Edit 

- Can be editable any time. `Type` can not changed.

### Delete

- Can be deleted any time. On click opens delete confirmation dialog.
- If Asset is linked with any `Banking` or `Insurance`, delete is not allowed.

#### UI Requirement

- Delete confirmation dialog. [See this](https://drive.google.com/file/d/1G_ysNu21UsMcOpuh9TLqCluMniAwBkIp/view?usp=sharing)


- When asset is not linked anywhere it shows normal delete confirmation dialog.
- When asset is linked somewhere it shows Delete not possible dialog with details of its relations.
- During Multi delete, When one of the selected asset is referenced anywhere, then we simply deny the action. User need to manually delete individual asset.

### Dispose

- System ask for `Disposed on` date and `Disposal Price` .  `Disposed on` is mandatory.
- Show all disposed asset in `DISPOSED` tab
- Shows `Disposed` tag for dispose asset.

#### UI Requirement

[Mockup](https://drive.google.com/file/d/1Zt0BYXmLoTIqlHkxudXFADL90mJZbXql/view?usp=sharing)

### Restore 

- Only Disposed assets can be restored.

  

## Browse Assets

This page shows list of the assets of the selected legal entity

For individual, this page also shows the assets which are owned by the associated partnership or Trusts. See [Associated Partnership](../legal-entities/browse-associated-partnerships) and [Associated Trusts](../legal-entities/browse-associated-trusts)

> For e.g. Individual is associated in one Partnership and that partnership has some assets. So those assets will also be shown in browse page of Individual. Same way if Individual in association with any trust and that trust has some assets, those assets will be shown in Assets page of Individual

[Mockups of Individuals](https://drive.google.com/file/d/1vtKlYIdHdJy6ccHhPk3-do9zd6-gIg72/view?usp=sharing)


For joint entity, list page shows records for  Joint & both Individuals in same page.  Here, Assets of Individual will also include any Assets of  Associated Partnership or Trust of that Individual. 

> In `Assets` tab for Joint `Tom and Judi`, it will display any assets owned jointly and also any assets that they may own individually (`Tom` or `Judi`). This page will also shows asset of Partnership or Trust where Tom and Judi is in association.

[Mockups of Joint](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbT7FLsjCE7ShuD_pT7-sbU)

Assets of Associated Partnership or Associated Trust will be only pulled to Individual or Joint page if `Pull Assets to Owners` value is Yes for that Partnership or Trust. Otherwise those assets of Partnership/Trust won't be pulled to the Individual or Joint even if that Individual is associated with that Partnership/Trust. 

> Individual is associated with two partnership P1 and P2. `Pull Assets to Owners` value of P1 is `Yes`  and for P2 its  `No` . It means assets of P1 will be shown in asset page of this Individual/Joint but assets of P2 won't be shown in asset page of Individual/Joint
>
> Individual is associated with two trusts T1 and T2. `Pull Assets to Owners` value of T1 is `Yes`  and for T2 its  `No` . It means assets of T1 will be shown in asset page of this Individual/Joint but assets of T2 won't be shown in asset page of Individual/Joint

For Trusts, list page shows assets which is owned by this Trust and  assets of any partnership where this trust is owner. Assets of Partnership is only shown in this page if this Trust is currently owner in that partnership. Assets of Partnership will be only shown to Trusts page if [Pull Assets to Owners](../legal-entities/partnership#pull-assets-to-owners) value is Yes for that Partnership. Otherwise those assets of Partnership won't be shown in Trust even if that Trust is associated with that Partnership. 

In list page, with each record shows the name of the owner entity. In joint page, If owner of the record is Joint it shows `Joint`, If owner of the record is Individual, Partnership or Trust shows name of that Partnership or Trust entity.

For Partnership, Foundation and Estate legal entities, it shows only those assets owned by that legal entity.

### UI Requirement

- For each subtype shows separate table
- Position of each subtype table is in alphabetical order except Valuable articles. Shows Table of Valuable article always at last

##### Sorting of Asset

- Under each table records are sorted in Alphabetical order of Name (Except Valuable Articles)
- Under Valuable Articles, primary sorting on subtype and secondary sorting on Name
- For Individual/Joint/trust page sorting is slightly different as follows
  - Under each table except Valuable article
    - Primary sorting on Entity type in sequence - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type
    - Secondary sorting on Asset Name
  - Under Valuable Articles
    - Primary sorting on Subtype
    - Secondary sorting on Entity type in sequence - Individual, Joint, Partnership, Trust. Sort alphabetically within entity type
    - Third sorting on Asset name

#### Way to change value of `Pull Assets to Owners`

For Partnership and Trust type legal entity, shows switch for `Pull Assets to Owners` using which user can change its value to `Yes` or `No`


## Linked insurances

If asset is linked with any `Insurance` , then that Insurance is Linked  insurance.

Asset can be linked at different type of Insurance at following places. Only current insurance policy relations are shown as Linked Insurances

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



### UI Requirement

- View dialog:
  - View dialog shows all linked  `Insurance Carrier(Type of Insurance policy)` in dialog if available
  - It will be link. On its click opens 
- List page
  - The Asset List page shows a new column `Insurance Carrier(Type of Insurance policy)` which shows linked insurance of the asset.   
  - With each insurance shows Insurance type in bracket after Name (Same as we are showing in view dialog)
  - When no insurance is available shows dash (-)
  - This new column is shown in both tab: CURRENT & DISPOSED
    - In CURRENT tab, this new column is shown between ‘Purchase price’ and ‘Notes’
    - In DISPOSED tab, this new column is shown between ‘Purchase Price’ and ‘Disposed On’

## Valuation

Valuation of  asset is changes over the time. Each year its value is deprecated. For e.g. If you purchase any car at $35000, its valuation after one year can be approx $30000, after two year $250000.

To track this valuation changes, system allows to enter valuation data. User can enter Date, Value and Notes. 

Here Date means date on which asset is valued. Value means its value after depreciation. Notes can have any text notes. 

### UI requirement

#### Add/Edit dialog

[Mockups of Add dialog](https://drive.google.com/file/d/1qH5YrCrKR3Cs2YADRt2yz0Xqqlby17MO/view?usp=sharing)

- Allows to enter more than one valuation record
- In valuation record, Date can not be lower than `Purchased On` date (Purchase date of Asset). 
- When `Purchased On` is not available, it allows to enter date without any validation. (This will be required when Purchase date of Asset is not known and we want to add valuation record)
- In Edit dialog shows records in Ascending order of Date.

#### View dialog

[Mockup of View dialog](https://drive.google.com/file/d/1cM_ph75T2NhPg741rlhj8G_MRigpwdXj/view?usp=sharing)

- Shows latest value from valuation record under `Current Value (As of)` 
- Shows valuation records as table
  - Column: Date, Value and Notes
  - Notes is shown in multiple line
  - Records are shown in ascending order of the date (Latest record is shown at bottom)

#### List page

[Mockup of List Page](https://drive.google.com/file/d/1vtKlYIdHdJy6ccHhPk3-do9zd6-gIg72/view?usp=sharing)

- Shows `Current Value` and `As of` column in ACTIVE tab. For disposed tab its not shown.
- `Current Value` is value of latest valuation record. 
- `As of` is date of latest valuation record.
- When no records available for Valuation,  `Purchase price` is shown as `Current Value`  and  `Purchase date` is shown as `As Of` (Only if Purchase price and Purchase date is available, otherwise it will be blank)
