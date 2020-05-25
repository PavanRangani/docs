# Foundation

## Entity

#### Name

Name of the Foundation

#### Established On

Date on which this Foundation is established

#### EIN

EIN of this foundation

#### Entity Type (*)

Legal type of the firm.

Possible options are : Trust or C-Corporation

#### Governance

Officers of the firm. Its not mandatory.

Based on selected Entity type, officers with different role can be added. With each officer `Start date` and `End date` and `Role` can be specified.

`Start date` means date on which officer joins the firm. `End date` means date on which officer has left the firm. `Start date` is mandatory.  End date is not mandatory (Officers working currently won't have end date)

Officers with some role can be added single, while officers with some type of role can be added multiple. 

See below for more details about various roles applicable for different entity type. Roles for which Multiple is written in bracket can be added multiple. 

##### Trust

Trustee (Multiple)

##### C-Corporation

Directors (Multiple)
President
Vice President
Secretary
Assistant Secretary
Treasurer

#### Description

User can enter any text notes.



## View Foundation

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

