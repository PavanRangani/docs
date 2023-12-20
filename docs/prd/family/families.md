# Families

## Overview

As a Family office manager, Clarius group manages Family and its entities. Family represents real life family. Family can have many legal entities.

## Entity

#### Name
- Name of the Family. It should be unique. It's a mandatory.

#### Family Narrative
- As Clarius adds new employees, there’s a need to help new team members come up to speed on the history of the families and households they will be supporting.  (Existing team members will already be familiar with the client’s history.) To address this need, Narrative is entered at family level. Narratives are short plain-text descriptions that summarize key information about the Family and Household, e.g. “Tom Alberg was a lawyer in New York who moved to Seattle…” (Since this is not needed by most people, most of the time, its display can be in the form of an info tooltip or something that appears on hover, or a collapsible section.) 
- It is rich text input editor. 

#### Family ID
- Each family is assigned one unique ID. Its numeric. It can't not be changed by users.
- Family ID is auto increment number. 
- Family ID is never reused.
  - For e.g. Any family is assigned `#1` ID. Now that family is archived/deleted and user create a new family. So system will assigned `#2` ID. `#1` is not reused.

#### Original ASA Signed
- System will set this field automatically based on the first ASA among any entity. 
  - For e.g. Athena have one family `Alberg` where `Tom` & `Judi` are two Individuals. Tom is the first household of the family. Now, user adds ASA details for `Tom` and add `4/1/1999` in Execution date. So system will set this date as a `Original ASA Signed` date at the family level.
- Once the date is auto set at family level, it can't be changed/removed in following cases. 
  - When user Amend/change the ASA Details of entity
  - When ASA is set to No
  - Mark entity as deceased/terminated 

#### Legal entities
- One family can have many legal entities.
- There are total 6 types of Legal entities available
  - Individual
    - Represent any person of the family
  - Joint
    - Represents an entity when two individuals are combinedly filing their tax returns.  
  - Partnership
    - Represents any partnership firm
  - Foundation
    - Represents any Foundation of this family
  - Estate
    - Represents estate of any deceased person of this family
  - Trusts
    - Represents any Trust of this family 


## Add Family

### System Rule
- Allows to create family by entering its name. 

### UX Rules
- New family can be added only from the current tab.
- If the user enters name which is already exits then system shows error message.

### UI Rules
[See mock of Add Family](https://drive.google.com/file/d/1SXa7keOYJXBwzrUvc0rX1Rd2pdCZcNR-/view?usp=sharing)
- Error when family with given name already exists: `Family with this name already exists`


## Enter Family Narrative
### System Rules
- User can enter a family details for each family.

### UX Rules
- Shows proper message when no data available.
- On hover, it shows a pencil icon. On click, it opens a rich input text editor box in the edit mode.
- Default box will have a fixed height.

### UI Rule
- [See this](https://drive.google.com/file/d/1EiBj2L2cthcT9jYXGRztXxuaobMZrszj/view?usp=sharing) when user enter a details
- [See this](https://drive.google.com/file/d/1dWXH7jl98KZXDCa-WKBALo603uaAzcCq/view?usp=sharing) when detail is entered


## Edit family
### System Rule
- Active family name and narrative can be edited anytime.

## Delete Family
### System Rule
- Only Admin users can Delete the family.
- When family is deleted, all legal entities created under it will also be deleted.
- In some cases, family delete is not possible for e.g. Family has some tasks.
- If an entity of the family is linked to another family, family delete is not possible.

### UX Rule
- When family has some tasks, system shows family delete not possible dialog. 
- When family has no tasks or it is not linked to other family, system shows confirmation dialog. On confirmation, family is deleted.

### UI Rule
[Delete not possible dialog](https://drive.google.com/file/d/1flilvgqrPjZTMZ4J2BcheydJtoRQGxup/view?usp=sharing)
[Delete confirmation dialog](https://drive.google.com/file/d/1lmwTFLqasDng30DhzkGUZflhs51bCMxT/view?usp=sharing)


### Known cases when family is deleted or not

**When family member isn't associated with other family member of the same family, system allows deletion of that family.**
- Suppose Family `F1` has two individual `M1` and `M2`. `M1` has one asset `a1` and `M2` has one banking `b1`. Both asset and banking are not associated with each other. So system will allows to delete family `F1`.

**When family member is associated with the another member of the same family, system doesn't allow deletion that family.**
- Suppose asset `a1` is added to the banking `b1`. So Both individuals `M1` & `M2` are associated with each other. So system won't allow to delete family `F1`. 

**When family member is associated with another family member, system won't allows to delete that family.**
- Suppose Family `F1` has one individual `M1` and family `F2` has one individual `M3`. User adds one gift for `M1` and added `M3` as a Recipient. So here, the system will not allow deletion of family `F1` or `F2` as both the families are associated to each other.


## Archive
### System Rules
- Active family can be archived anytime
- Only Admin users can Archive the family
- When any family is archived, the system doesn’t remove any household or household team. It will remain as it is.
- When any family is archived, the system will auto-archive all entities of that family.

### UX Rules
- Click on `Archive`, shows confirmation dialog.
- On confirmation, family will be moved from Current to Archived tab.

### UI Rules
[Mockup of confirmation dialog](https://drive.google.com/file/d/19llPJW93tF04szyBMkX07QUWuL8hP0xl/view?usp=sharing)


## Restore
### System Rules
- Only `Archived` family can be restored.
- Only Admin users can Restore the family
- When any family is restored, the system will activate all the archived entities of that family. (Here, only the archived entities will be marked as active, not those that were already Deceased or Terminated)

### UX Rule
- Click on `Restore`, shows confirmation dialog. On confirmation, family will be moved from Archived to Current tab.

### UI Rule
[Mockup of confirmation dialog](https://drive.google.com/file/d/1Lb_BhMBAGzOWXgzeB4cjRf2ngDFhE3SZ/view?usp=sharing)
