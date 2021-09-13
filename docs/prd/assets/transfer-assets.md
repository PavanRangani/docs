# Transfer Assets

## Overview

- Real life use case
  - Sunny transferred his home into a Trust.
  - Bob and Deb George will be transferring their homes into a Trust. 
- To handle above cases asset need to removed from one entity and needs to be added to another manually
- To solve that problem we have introduced feature to transfer asset from one legal entity to another legal entity

- Assets can be only transferred to another legal entity of the same family.

## Transfer

- At the time of transfer, it asks for `Transfer Date` date and `Transferred To` legal entity.
  - If the current asset has a `Purchase Date`, the `Transfer Date` date should always be equal to or greater than the `Purchase Date`.  If the asset does not have a `Purchase Date` then the user can add any date to the `Transfer Date`.
  - Only show the Active legal entity of the Assets family (Asset's Owners Family) in the `Transferred To` field. And Source Legal entity does not come in `Transferred To` field dropdown.
- Assets can be linked with many types of Banking. In Banking, the asset field allows to select only assets of the same legal entity. 
  - If an asset is linked in active Banking, it doesn’t allow to transfer. If it's linked with Disposed Banking, transfer is allowed.
- Assets can also be linked to Insurance. Asset field in insurance allows to select assets of any legal entity of the same family.
  - Suppose an asset is linked in Insurance. When that asset is transferred to any other legal entity, it will remain linked with existing insurance as it is after the transfer. 	
  - Once Asset is transferred, Insurance Carrier will also transfer with that Asset. 

### UI Requirement

[Mockup](https://drive.google.com/file/d/1-mQ1FMgOn3Ezrp2dvivYmffjl_bQ8g5n/view)

- `Transfer Date` is Date input field. and Its a mandatory field.
- `Transferred To` is auto-complete dropdown. and Its a mandatory field.
- If the asset is added to an active banking, that asset will not be transferred. Show system `Transfer Not Possible` dialog. [See this](https://drive.google.com/file/d/101hjwJlnVFVfNptOgBWxDzvADN10E1h1/view)

## Browse Transferred Assets

- Transferred asset will be shown in `Transferred` tab of original owner.
- For new owner it will be shown in `Current` tab
- Pulled assets will also be shown here.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1EKWDEN_jGPRr3iFQxve_H8oM4ipy7YjE/view)

- If there is no records available then shows `No Assets Found`.
- Column : `Entity`, `Name`, `Subtype`, `Transfer Date`, `Transferred To`, `Notes`.
  - For Partnership : `Entity` column is not available.
- Records shows group by Type
- For each type shows separate table. Type sorting will be same as [current tab](./assets.md#sorting-of-asset)
- No Action available.
- On click of any records opens view dialog.
- Edit, Delete, Dispose action won't be available.



## View of Transferred Asset

- On click of any records opens view dialog of that assets.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1WJHjUxhzKX69kQXIKNEyGHtcqLyR9kHL/view)



### Known Case

- If an entity has an asset transferred from another entity, that entity cannot be deleted.
  - Ex. If an asset of `Individuals 1`  is transferred to another entity `Trust 1` for the same family. Now user deletes the `Trust 1` entity but that entity `Trust 1` is not deleted, because the asset of `Individuals 1` is linked with `Trust 1`. So the system will restrict to delete `Trust 1` entity.

