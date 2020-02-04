# Assets

## System Requirement

- There are total 8 types of assets.
- For each type there are `Subtypes`. 
- Assets has some common field and some type specific field.
- Type specific fields depends on `Type`. it has nothing to do with `SubType`
- Supported actions `Create`, `Update`, `Delete`, `Dispose`.

### Entity

#### Common fields

| Field name     | description                                                  |
| -------------- | ------------------------------------------------------------ |
| Name (*)       | Name field is mandatory.                                     |
| Type(*)        | Possible types:<br />Airplane, Automobile, Equipment, Horse, Motorcycle, Real Estate, Valuable article, Watercraft |
| Subtype (*)    | Subtype field is mandatory. Subtype depends on the Type<br /><br />For Type `Airplane` possible Subtypes are `Airplane Floatplane,  Airplane Hourly Card, Airplane Prop`<br /><br />For Type `Automobile` possible Subtypes are `Automobile Collectible, Automobile Floatcar, Automobile Primary`<br /><br />For Type `Equipment` possible Subtypes are `Equipment Primary`<br /><br />For Type `Horse` possible Subtypes are Horse `Personaly`<br /><br />For Type `Motorcycle` possible Subtypes are `Motorcycle Collectible, Motorcycle Primary`<br /><br />For Type `Real Estate` possible Subtypes are `Real Estate Additional Residence, Real Estate Hangar, Real Estate Investment, Real Estate Primary Residence, Real Estate Raw Land`<br /><br />For Type `Valuable article` possible Subtypes are `Valuable Articles Art, Valuable Articles Furs, Valuable Articles jewelry, Valuable Articles Other, Valuable Articles Rugs, Valuable Articles Silverware`<br /><br />For Type `Watercraft` possible Subtypes are `Watercraft Power, Watercraft Sailboat`<br /><br /> |
| Purchased on   | Date of Purchase. Future date is not allowed.                |
| Purchase price | Default value is $0. Decimal is not allowed.                 |
| Notes          |                                                              |
| Disposed on(*) | Date on which assets is dispose                              |
| Sell price     | The price at which assets is sold.                           |

#### Type specific fields

| Type Name        | Field name          | Description                                                  |
| ---------------- | ------------------- | ------------------------------------------------------------ |
| Airplane         |                     |                                                              |
|                  | Registration number | free form text field.                                        |
|                  | Serial number       | free form text field.                                        |
| Automobile       |                     |                                                              |
|                  | State               | State drop down. shows state of USA and Canada.              |
|                  | VIN                 | free form text field.                                        |
|                  | License number      | free form text field.                                        |
| Equipment        |                     |                                                              |
|                  | Serial number       | free form text field.                                        |
| Horse            |                     |                                                              |
|                  | -                   | -                                                            |
| Motorcycle       |                     |                                                              |
|                  | State               | Users select state here. Default value is blank.             |
|                  | VIN                 | Users add VIN number here. There is no limitation for add VIN number. |
|                  | License number      | Users add License number here. No limitation for add License number. Default value is blank. |
| Real Estate      |                     |                                                              |
|                  | Legal Description   | Free form text field.                                        |
|                  | Tax parcel          | Free form text field.                                        |
|                  | Address 1           |                                                              |
|                  | Address 2           |                                                              |
|                  | City                | City drop down.                                              |
|                  | State               | State drop down. shows state on based on country.            |
|                  | Zip                 | Zip input                                                    |
|                  | Country             | Country drop down. Default value will be USA.                |
| Valuable article |                     |                                                              |
|                  | -                   | -                                                            |
| Watercraft       |                     |                                                              |
|                  | HIN                 | Free form text field.                                        |

### Update 

- Can be updated any time. Type can not changed.

### Delete

- Can be deleted any time.

### Dispose

- System ask for date and sell price. Date is mandatory

### Restore 

- Only disposed assets can be restored.

## UI Requirement

[Mock-ups](https://drive.google.com/open?id=17hgzYyR3NWIYaOFdAuQbItLxX79S4b2H) 

