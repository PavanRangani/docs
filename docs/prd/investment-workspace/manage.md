# Add/Edit/Delete/Amend/Publish

## Add/Edit

### System Rule
- No fields are mandatory on this page.
- `Draft` or `Published` workspace can be edited anytime.
- For `Private Capital Target` field of the `Suitability`, system will pull the amount of the `Strategic Target` of `Growth Illiquid` from the current IPS.
- While creating new workspace (create a new entity) it can be added as Draft workspace.

### UX Rule
- There isn't any concept of Add. Everything is edited. For each entity all these details are blank. Users can edit and fill in the details 

### UI Rule
- Mockups
    - [Edit dialog of Overview & Preferences](https://drive.google.com/file/d/1KgFQ1STnWBYQ_Tofq7j6-AIhYBrUT-SO/view?usp=sharing)
    - [Edit dialog of Suitability](https://drive.google.com/file/d/1lWlzqu-ftQoI9C2BwsjhCSKq6JAfAc88/view?usp=sharing)
    - [Edit dialog of Discretion](https://drive.google.com/file/d/13yKDDn_5au6eH9WlYZI1TWnHByC9onmO/view?usp=sharing)
    - [Edit dialog of Cash Flow of funding account](https://drive.google.com/file/d/1Bltu8bg8_4UFaesthpY93aVKVIx-PN7v/view?usp=sharing)
    - [Edit dialog of Portfolio Construction](https://drive.google.com/file/d/1ZolmFLe1Jwenk1B5c0SUM_0LkGl_RSL2/view?usp=sharing)


## Delete

### System Rule
- No concept of Delete any particular section. User can reset any details using edit functionality only.
- Current version (draft or published) can be deleted only when historical version is available.
- If entity has historical version and user deletes the current version, system will set the latest historical version as the current version.
- Historical version can't be deleted.

### UX Rule
- On delete, system ask confirmation dialog. 
- On confirmation, current version is deleted and latest historical version is moved to the current version.

### UI Rule
- [Delete confirmation dialog](https://drive.google.com/file/d/1QfGrDa9E8wBSDioWfATrwCFvs6QsYGv2/view?usp=sharing)



## Amend 

### System Rule
- Only publish workspace can be amend.
- When workspace is amened, system will prefills current version details.
- Portfolio notes won't be amended.
- System maintain history of each amendment.

### UX Rule
- On amend action, system asks the Date and Notes for Amend.
- On entering date and Notes, it creates a copy of the current version with all data prefilled. 
- New version is always added in draft mode. 
- When amendment date is less the latest historical amendment date, system shows proper error message.

### UI Rule
- [Amend confirmation dialog](https://drive.google.com/file/d/1Yt2kWvPvzuo0YVT81cSkZ3fZmDzdwgvS/view?usp=sharing)
- Error message in case on invalid amendment date: `Date must be > {latest historical version's amendment date}`



## Publish

### System Rule
- Only draft workspace can be published.

### UX Rule
- On publish, system shows the confirmation dialog. On confirmation, draft workspace is published.

### UI Rule
- [Publish Confirmation dialog](https://drive.google.com/file/d/1EEcgdeBttt2uy2911orQjAPKGERYtyOI/view?usp=sharing)

