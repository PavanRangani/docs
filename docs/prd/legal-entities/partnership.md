# Partnership

## Overview

- Represents any real life partnership firm
- System maintains history of ownership changes

- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use 'Edit Ownership'
  - For e.g. After creating any Partnership, you realized that you made mistake in entering any owner name or his/her share. Then you should use `Edit Ownership`. It will not create history entry. 
  - For e.g. When any owner is removed or new owner is added, you should use `Add ownership` so that system maintains entry in history.
- Possible actions: `Create`, `Edit Ownership`, `Add Ownership`, `Delete Ownership`

## Entity

#### Name (*)

Name of the Partnership

#### EIN

EIN number of the partnership firm

#### Established on

Date of which this firm is established

#### State of formation

State in which this firm is registered

#### Entity Type (*)

Legal type of the firm.

Possible options are : LLC, S-Corp, C-Corp

#### Governance

Officers of the firm. Its not mandatory.

Based on selected Entity type, officers with different role can be added. With each officer `Start date` and `End date` and `Role` can be specified.

`Start date` means date on which officer joins the firm. `End date` means date on which officer has left the firm. `Start date` is mandatory.  End date is not mandatory (Officers working currently won't have end date)

Officers with some role can be added single, while officers with some type of role can be added multiple. 

See below for more details about various roles applicable for different entity type. Roles for which Multiple is written in bracket can be added multiple. 

##### LLC:

Manager (Multiple)
Managing Member (Multiple)

##### S-Corp

Directors (Multiple)
President
Vice President
Secretary
Assistant Secretary
Treasurer

##### C-Corp

Directors (Multiple)
President
Vice President
Secretary
Assistant Secretary
Treasurer

#### UBI

UBI number of the partnership firm

#### Current Owners

Current owners of the firm. Each owner has their % share.

Total % should be exactly 100.

#### Clarius Emails

#### Partners



## Create

- Multiple Owners can be added
- Total of % should be 100
- System auto creates entry in history
- `Effective date` will be blank for this auto create entry. 

#### Note

- While creating first entry of history, we are not using `Established on` as `Effective date` of first entry in history (Client's requirement was: `Established On` and `Effective date` of first ownership does not need to be same)

## Add Ownership

- When there is any change in ownership, system allows to add new ownership 
  - Can be used  these cases: for e.g. any owner removed, any new owner added, any change in current share of owners 
- System ask for `New Owners Effective Date` 
- System makes entry in history
- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use 'Edit Ownership'
  - For e.g. After creating any Partnership, you realized that you made mistake in entering any owner name or his/her share. Then you should use `Edit Ownership`. It will not create history entry. 
  - For e.g. When any owner is removed or new owner is added, you should use `Add ownership` so that system maintains entry in history.

## Edit ownership

- Allows edit anytime
- Current ownership or any existing ownership in history can be edited.
- System doesn't make entry in history

## Delete ownership

- Allows delete anytime



## View partnership

### Governance

- Shows officers in two tab: Current Governance & Past Governance
- Officers who are currently working under the firm are shown in Current Governance (without End date).  Officers who has left are shown in Past Governance (With End date).
- Past Governance tab is shown only when there are some records in it. Otherwise it won't be shown
- In both tabs records are shown in table 
- Table columns
  - Role
    - Role of the officer
  - Name
    - Name of the officer
  - Start date
    - Start date of the officer
  - End date
    - End date of the officers
    - Only applicable to Past Governance
- In both tabs, Records in table are sorted primary on Role and secondary on start dates

