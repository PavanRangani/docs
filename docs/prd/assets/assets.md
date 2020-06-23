# Assets

## System Requirement

- There are total 8 types of assets.
- Type specific fields depends on `Type`. it has nothing to do with `SubType`
- Assets has some common field and some type specific field.
- For each type there are `Subtypes`. 
- Supported actions `Create`, `Update`, `Delete`, `Dispose`.

### Entity

#### Common fields

| Field name     | description                                                  |
| -------------- | ------------------------------------------------------------ |
| Name (*)       | Name field is mandatory.                                     |
| Type(*)        | Possible types:<br />Airplane, Automobile, Equipment, Horse, Motorcycle, Real Estate, Valuable article, Watercraft |
| Subtype (*)    | Subtype field is mandatory. Subtype depends on the Type<br /><br />For Type `Airplane` possible Subtypes are `Airplane Floatplane,  Airplane Hourly Card, Airplane Prop`<br /><br />For Type `Automobile` possible Subtypes are `Automobile Collectible, Automobile Floatcar, Automobile Primary`<br /><br />For Type `Equipment` possible Subtypes are `Equipment Primary`<br /><br />For Type `Horse` possible Subtypes are Horse `Horse Personal`<br /><br />For Type `Motorcycle` possible Subtypes are `Motorcycle Collectible, Motorcycle Primary`<br /><br />For Type `Real Estate` possible Subtypes are `Real Estate Additional Residence, Real Estate Hangar, Real Estate Investment, Real Estate Primary Residence, Real Estate Raw Land`<br /><br />For Type `Valuable Article` possible Subtypes are `Valuable Articles Art, Valuable Articles Furs, Valuable Articles jewelry, Valuable Articles Other, Valuable Articles Rugs, Valuable Articles Silverware`<br /><br />For Type `Watercraft` possible Subtypes are `Watercraft Power, Watercraft Sailboat`<br /><br /> |
| Purchased on   | Date of Purchase. Future date is not allowed.                |
| Purchase price | Default value is $0. Decimal is not allowed.                 |
| Notes          |                                                              |
| Disposed on(*) | Date on which assets is dispose                              |
| Disposal price | The price at which assets is sold/Disposed                   |
| Valuation      | Valuation of this asset over the time. Valuation of asset is deprecated at each year. So to track its valuation this can be used. <br /><br /> User can enter Date, Value and Notes.<br />Here Date means date on which its valued. Value means its value after depreciation. Notes can have any text notes. |

#### Type specific fields

| Type Name   | Field name          | Description                                                  |
| ----------- | ------------------- | ------------------------------------------------------------ |
| Airplane    |                     |                                                              |
|             | Registration number | free form text field.                                        |
|             | Serial number       | free form text field.                                        |
| Automobile  |                     |                                                              |
|             | State               | State drop down. shows state of USA and Canada.              |
|             | VIN                 | free form text field.                                        |
|             | License number      | free form text field.                                        |
| Equipment   |                     |                                                              |
|             | Serial number       | free form text field.                                        |
| Motorcycle  |                     |                                                              |
|             | State               | State drop down. shows state of USA and Canada.              |
|             | VIN                 | Users add VIN number here. There is no limitation for add VIN number. |
|             | License number      | Users add License number here. No limitation for add License number. Default value is blank. |
| Real Estate |                     |                                                              |
|             | Legal Description   | Free form text field.                                        |
|             | Tax parcel          | Free form text field.                                        |
|             | Address 1           |                                                              |
|             | Address 2           |                                                              |
|             | City                | City drop down.                                              |
|             | State               | State drop down. shows state on based on country.            |
|             | Zip                 | Zip input                                                    |
|             | Country             | Country drop down. Default value will be USA.                |
| Watercraft  |                     |                                                              |
|             | HIN                 | Free form text field.                                        |

- For `Horse` and `Valuable Article` there isn't any extra fields. (It has only common fields)

### Update 

- Can be updated any time. `Type` can not changed.

### Delete

- Can be deleted any time.
- If Asset is linked with any `Banking` or `Insurance`, delete is not allowed.

### Dispose

- System ask for `Disposed on` date and `Disposal Price` . `Disposed on`is mandatory

### Restore 

- Only Disposed assets can be restored.

## UI Requirement

[Mock-ups](https://drive.google.com/open?id=17hgzYyR3NWIYaOFdAuQbItLxX79S4b2H) 

### Browse Assets

#### For Joint

[Mockups of Joint](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScUMmbGal_gTP_xDO7m70YuU)

For joint entity, list page shows records for both Joint & Individuals in same page.  For example, in `Assets` tab for Joint `Tom and Judi`, it will display any assets owned jointly and also any assets that they may own individually (Tom or Judi). 

In list page, with each record shows the name of the owner entity. If owner of the record is Joint it shows `Joint` and if owner of the record is `Individual` shows First name of that Individual.


#### For Individuals

[Mockups of Individuals](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScR_-TQj2XxrYwMDNyKVllbg)

For Individuals entity, list ppage shows records for Individuals, Partnership & Trust. For example, In `Assets` tab for Individuals `John T Brown`, it will display any assets where this individuals added as a Owners in Partnership or added as a Truster, Trustee or Beneficiary in Trust. 


## Linked insurances

If asset is linked with any `Insurance` , then that Insurance is Linked  insurance.

### UI Requirement

- View dialog:
  - View dialog shows all linked  `Insurance Carrier` in dialog if available
  - It will be link.
- List page
  - The Asset List page shows a new column `Insurance Carrier` which shows linked insurance of the asset.
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

[Mockups of Add dialog](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbgrzrAPOHVBZspki6O3lfA)

- Allows to enter more than one valuation record
- Date can not be lower than purchase date.
- In Edit dialog shows records in Ascending order of Date.

#### View dialog

[Mockup of View dialog](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScSEI_6tjPPykb-pCweP13I0)

- Shows latest value from valuation recrord as `Current Value (As of)` . 
- Shows valuation records as table
  - Column: Date, Value and Notes
  - Notes is shown in multiple line
  - Records are shown in ascending order of the date (Latest record is shown at bottom)

#### List page

[Mockup of List Page](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRlJ_v9YDw7JNDLTwYYHIE0)

- Shows `Current Value` and `As of` column in ACTIVE tab. For disposed tab its not shown.
- `Current Value` is value of latest valuation record. 
- `As of` is date of latest valuation record.
- When no records available for Valuation,  `Purchase price` is shown as `Current Value`  and  `Purchase date` is shown as As of (Only if Purchase price and Purchase date is available, otherwise it will be blank) [see this](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScdZXugW6TzSN0S7SUeXazGY)
