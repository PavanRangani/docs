# Assets

## System Requirement

- There are total 8 types of assets.
- For each type there are subtypes. 
- Assets has some common field and some type specific filed.
- Supported actions create, update, delete, dispose.

### Entity

#### Common fields

| Field name     | description                                                  |
| -------------- | ------------------------------------------------------------ |
| Name (*)       | Name field is mandatory.                                     |
| Type(*)        | Airplane, Automobile, Equipment, Horse, Motorcycle, Real Estate, Valuable article, Watercraft |
| Subtype (*)    | Subtype field is mandatory. Subtype is depending on type of assets. |
| Purchased on   | Date of Purchase. Future date is not allowed.                |
| Purchase price | Default value is $0. Decimal is not allowed.                 |
| Notes          |                                                              |
| Disposed on(*) | Date on which assets is dispose                              |
| Sell price (*) | The price at which assets is sold.                           |

#### Type specific fields

| Type Name        | Field name          | Description                                                  |
| ---------------- | ------------------- | ------------------------------------------------------------ |
| Airplane         |                     |                                                              |
|                  | Subtype             | Airplane Floatplane,  Airplane Hourly Card, Airplane Prop    |
|                  | Registration number | free form text field.                                        |
|                  | Serial number       | free form text field.                                        |
| Automobile       |                     |                                                              |
|                  | Subtype             | Automobile Collectible, Automobile Floatcar, Automobile Primary |
|                  | State               | State drop down. shows state of USA and Canada.              |
|                  | VIN                 | free form text field.                                        |
|                  | License number      | free form text field.                                        |
| Equipment        |                     |                                                              |
|                  | Subtype             | Equipment Primary                                            |
|                  | Serial number       | free form text field.                                        |
| Horse            |                     |                                                              |
|                  | Subtype             | Horse Personal                                               |
| Motorcycle       |                     |                                                              |
|                  | subtype             | Motorcycle Collectible, Motorcycle Primary                   |
|                  | State               | Users select state here. Default value is blank.             |
|                  | VIN                 | Users add VIN number here. There is no limitation for add VIN number. |
|                  | License number      | Users add License number here. No limitation for add License number. Default value is blank. |
| Real Estate      |                     |                                                              |
|                  | Subtype             | Real Estate Additional Residence, Real Estate Hangar, Real Estate Investment, Real Estate Primary Residence, Real Estate Raw Land |
|                  | Legal Description   | Free form text field.                                        |
|                  | Tax parcel          | Free form text field.                                        |
|                  | Address 1           |                                                              |
|                  | Address 2           |                                                              |
|                  | City                | City drop down.                                              |
|                  | State               | State drop down. shows state on based on country.            |
|                  | Zip                 | Zip input                                                    |
|                  | Country             | Country drop down. Default value will be USA.                |
| Valuable article |                     |                                                              |
|                  | Subtype             | Valuable Articles Art, Valuable Articles Furs, Valuable Articles jewelry, Valuable Articles Other, Valuable Articles Rugs, Valuable Articles Silverware |
| Watercraft       |                     |                                                              |
|                  | Subtype             | Watercraft Power, Watercraft Sailboat                        |
|                  | HIN                 | Free form text field.                                        |

### Update 

- Can be updated any time. Type can not changed.

### Delete

- Can be deleted any time.

### Dispose

- System ask for date and sell price. Both are mandatory field.

### Restore 

- Only disposed assets can be restored.

## UI Requirement

[Mock-ups](https://drive.google.com/open?id=17hgzYyR3NWIYaOFdAuQbItLxX79S4b2H) 

