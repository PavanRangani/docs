# Deceased, Terminate & Delete

//TODO - add rules when delete not poissible due to household

## Overview

- When any individual is expired in real life, it should be marked as Deceased in our system.
- When Entities other than Individual is closed in real file, it should be marked as Terminated. 
  - For e.g. any Partnership firm is closed in real life, it should be marked as Terminated in our system.

- Deceased and Terminated can be Undo anytime.

## Deceased
### System Rule
- When any Individual is marked as deceased, system ask for `Deceased on` date.
- When any Individual has Household and user mark that individual as deceased, system will remove the `Scope of Service` and Household team. ASA details will remain as it is. 
- Can't be Deceased until it is removed from `Service team` for other entity.

### UX Rule
- When Deceased action is not possible, system shows a `Deceased not possible` dialog.
- When Deceased action is possible and it has household details, system shows hint message in terminate joint diaog. 

### UI Rule
- Deceased not possible. [See this](https://drive.google.com/file/d/12FrjUxq-aUL5HNOtgzrOELXXnxAuWJ3t/view?usp=sharing)
- Deceased possible dialog but it has household [See this](https://drive.google.com/file/d/1hBF3nj54J7RI6hZsMQ6jCDpbQqAxq1Hn/view?usp=sharing)



### Contact

- When any individual is marked as Deceased , Corresponding contact is auto archived.
- Restore action for contact of deceased individual is not allowed.
- For contact of Deceased individual edit is allowed. But Mailing List edit is not allowed.
- Deceased Individual will not appear in Contact auto-complete. 

### Mailing lists

- When individual is marked as Deceased,if that Individual is in any existing Mailing list, then it will be removed from there. 
- System doesn't allow to add that individual in a (new or existing) mailing list (UI won’t show it in auto complete list)

### Undo Deceased

- Deceased can be reverted back anytime using `Undo Deceased`
- When Undo is performed, related contact will be restore auto

## Terminate

### System Rule
- When entities other than Individual is closed in real file, it should be marked as Terminated. 
- Can be marked as Terminate anytime.
- System ask for Termination date.
- For Trust, system ask for `Termination notes` along with `Termination date`
- When any Joint has Household and user mark that Joint as terminated, system will remove the `Scope of Service` and Household team. ASA details will remain as it is. 
- Joint can't be terminated until it is removed from `Service team` for other entity.

### UX Rule
- When termination is not possible, system shows a `Termination not possible` dialog.
- When termination is possible and it has household details, system shows hint message in terminate joint diaog. 
- For other entity 

### UI Rule
- Termination not possible [See this](https://drive.google.com/file/d/1q-gvFvmjbdN7XK_5zcy06XWM5oYm50rB/view?usp=sharing)
- Termination is possible [See this](https://drive.google.com/file/d/1_lcOXlXQONdVt4TXe8vggcUebB6g1Vg4/view?usp=sharing)


### Undo Terminate

- Termination can be reverted back anytime using `Undo Terminate`
- If same individual already exits in active joint, system restrict the undo terminate action. 
  - For that, system shows proper dialog. See this //TODO

## UI Requirements

See mockups

- [Individual](https://drive.google.com/drive/u/0/folders/1AiOKWn-dF54_9tZ_e4M-7PPhcLNPrfYV)
- [Joint](https://drive.google.com/drive/u/0/folders/1ndv-V3XBKHnA7gg_v9YK99o6_b9Ybj-x)
- [Partnership](https://drive.google.com/drive/u/0/folders/1pz49vTxi-G_5akRIZldifbmwWGPxsMKp)
- [Trust](https://drive.google.com/drive/u/0/folders/1A7_nX8sogd3ntkqPAPmbxAtUPz8EPaBO)