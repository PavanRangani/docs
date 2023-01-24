# Partnership

## Overview

- Represents any real life partnership firm
- System maintains history of ownership changes

- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use 'Edit Ownership'
  - For e.g. After creating any Partnership, you realized that you made mistake in entering any owner name or his/her share. Then you should use `Edit Ownership`. It will not create history entry. 
  - For e.g. When any owner is removed or new owner is added, you should use `Add ownership` so that system maintains entry in history.
- Possible actions: `Create`, `Edit Ownership`, `Add Ownership`, `Delete Ownership`

## Entity

#### Purpose of Partnership

Purpose of the Partnership

#### Name (*)

Name of the Partnership

#### Tax ID Type (*)

Possible values can be `EIN` or `Individuals SSN`.

#### EIN

EIN number of the partnership firm

#### Social Security Number of

Applicable only when Tax Id Type is `Individuals SSN`. Its auto complete dropdown for current active family individuals. (No Deceased)

#### Social Security Number

Applicable only when Tax ID Type is `Individual SSN`. It will pull the SSN number of the above selected individuals in `Social Security Number of` field.
`Social Security Number` field with Individuals is not mandatory. So due to this, When `Social Security Number` is not available for selected Individual under `Social Security Number of` field, this field will remain blank.

#### Established on

Date of which this firm is established

#### State of Formation

State in which this firm is registered

#### UBI

UBI of the partnership firm.

#### Entity Type (*)

Legal type of the firm. Its mandatory.

Possible options are : LLC, S-Corp, C-Corp. Default `LLC` selected.

#### Registered Agent

Registered agent of the firm. It can be company or contact. Default `Contact` is selected. Its not mandatory.


#### Contact Information

- Phone
  - Phone number of the Partnership firm. Its not mandatory.
- Fax
  - Fax of the Partnership firm. Its not mandatory.
- URL
  - URL of the Partnership firm. Its not mandatory. 


#### Address

- Address of the Partnership firm. User can allows to add 2 addresses. Its not mandatory.
- By default, addresses name are `Address` & `Addtional Address`.
- User can able to change the header of the address. On hover, shows pencil icon. On click, opens header in edit mode where user can able to change the header name.
- Address is not a mandatory.
- Fields of the addresses are: 
  - Address 1 
  - Address 2
  - City 
  - State 
  - Zip-code
  - Country
    - By default, USA is prefilled.


#### Governance

Officers of the firm. Its not mandatory.

Officers are either individuals or contact. 

- For Manager role, Officers are Individuals, Contacts and Same family Legal entity.
- For other role, Officers are dropdown of whole contact and individuals.

Based on selected Entity type, officers with different role can be added. With each officer `Start date` , `End date` , `Notes` and `Role` can be specified. `Notes`   should be show in multiple line when required.

`Start date` means date on which officer joins the firm. `End date` means date on which officer has left the firm. `Start date` is mandatory.  `End date` is not mandatory (Officers working currently won't have end date)

Officers with some role can be added single, while officers with some type of role can be added multiple.

See below for more details about various roles applicable for different entity type. Roles for which Multiple is written in bracket can be added multiple. 


##### LLC:

- Manager (Multiple)
- Managing Member (Multiple)
- Authorized Agent (Multiple)

##### S-Corp

- Director (Multiple)
- President
- Vice President
- Secretary
- Assistant Secretary
- Treasurer
- Authorized Agent



##### C-Corp

- Director (Multiple)
- President
- Vice President
- Secretary
- Assistant Secretary
- Treasurer

#### UBI

UBI number of the partnership firm

#### Current Owners

Current owners of the firm. 

As owner Contact, Individual, Companies, Other Partnership, Estate, Foundation or Trust can be added.

Show `Company`, `Client Entity` and `Client` as secondary information

Each owner has their % share. Total % should be exactly 100.

#### Pull Assets to Owners

Possible values : `Yes` or `No`. Default value `Yes`.

Yes means assets of this Partnership will be pulled to the Individual, Joint, Estate, Foundation, Trust. No means assets of this Partnership won't be pulled to the Individual, Joint, Estate, Foundation, Trust.

#### Clarius Emails

#### Partners



## Add Partnership

- Default type `LLC` is selected. User can change if needed.

## Create owner

- Multiple Owners can be added
- System auto creates entry in history
- `Effective date` will be blank for this auto create entry. 

#### Note

- While creating first entry of history, we are not using `Established on` as `Effective date` of first entry in history (Client's requirement was: `Established On` and `Effective date` of first ownership does not need to be same)

## Edit General

- When entity type is changed, system shows warning if existing roles are not applicable to newly selected Entity type.
  - For e.g current Entity type is S-corp and under governance Directors are added. So now when user change Entity type fo LLC, Directors are not applicable in LLC. So it will show warning message to user.

### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDSccyz8ZrYUpMcaBSUVFTNBiM)

- Error Message: `Governance roles which are not applicable to LLC will auto removed`



## Edit Contact Information

- Allows to edit contact information.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1mLUw_3v5ixv2j85QBmqXPGy9USYM5kUS/view?usp=sharing)



## Edit Governance

- Allows to add/edit/delete roles

### UI requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScbP4FzEOHHH_TL1xOs0gny0)

- When there is no officer added in `Governance`, shows [`No Records Found`](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScRJHlPl00gmTnPOqLlHDv2s)
- Records under Governance will be shown in order of Roles of the selected Entity type. See order of roles applicable to each Entity type in [Governance](#governance)
- User can not added same role and same officer in the governance of the partnership.
- When officer already added as a past governance and user add/edit same officer on same role in current governance, system shows an error like `Same role exists in Past Governance`. 
- When officer already added as a current governance and user edit same officer on same role in past governance, system shows an error like  `Same role exists in Past Governance`. 

## Add Ownership

- When there is any change in ownership, system allows to add new ownership 
  - Can be used  these cases: for e.g. any owner removed, any new owner added, any change in current share of owners 
  - Total of % should be 100
- System ask for `New Owners Effective Date` 
- System makes entry in history
- When entry in history is required, then only `Add Ownership` should be used. Otherwise you can use `Edit Ownership`
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

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCG50_1jmsN61JZidUfBXIdl)

- Shows officers in two tab: [Current Governance](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWErtbC4l02oVfCFdvg54mw) & [Past Governance](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScdbLW6tO_tZIf6Apg8FVhk4)
- When there is no officer added in `Current Governance` then show message as [`No Records Found`](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScd2f2R2tT1K7kNCTpUdjTnE)
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
- In both tabs, Records in table are sorted primary on Role and secondary on start dates. See the order of roles applicable to each Entity type in [Governance](#governance)


### Employees section

- If any contact is associated with Partnership, that contact is shown under `Employees` section.
- Shows Name, Phone Number and Email of the contact.
- Name is shown as hyperlink and clicking on it opens contact view dialog.
- If contact  is Archived, it won't be available here.

### UI Requirement

[Mock up](https://drive.google.com/file/d/1IT35WWyZ9q5LTND7I0W8wD1TmmF8bUGg/view?usp=sharing) 

- Shows `+` button in `Employees` section. On click of `+` button, it opens add contact dialog where `Company` field prefilled with given partnership.



### Download PDF

#### UX Rule

- Allows to download single Partnership.
- Show PDF icon on the header of Partnership. On click, the pdf file will be downloaded.
- If partnership is terminated then shows termination date at last in general information section.
- PDF icon won't be applicable when the tab has no records available.

#### PDF File

- Downloaded file name: `partnership-summary-of-{legal entity name}.pdf`
- Shows `New Owners Effective Date` &  `Note` in the current ownership section.
- Sorting order of `Current Governance` & `Current Ownership` are the same as current [UI app](#governance).

**Note**: There is no need to show `SSN Number` & `Past Governance` & `Past Ownership` & `Other Notes` section in PDF (Based on Keith suggestion)..

Sample PDF file for Partnership //TODO