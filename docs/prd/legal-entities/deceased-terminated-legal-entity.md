# Deceased, Terminate & Delete

## Overview

- When any individual is expired in real life, it should be marked as Deceased in our system.
- When Entities other than Individual is closed in real file, it should be marked as Terminated. 
  - For e.g. any Partnership firm is closed in real life, it should be marked as Terminated in our system.

- Deceased and Terminated can be Undo anytime.

## Deceased

- System ask for `Deceased on` date

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

- When entities other than Individual is closed in real file, it should be marked as Terminated. 
- Can be marked as Terminate anytime.
- System ask for Termination date.
- For Trust system ask for `Termination notes` along with `Termination date`

### Undo Terminate

- Termination can be reverted back anytime using `Undo Terminate`
- If same individual already exits in active joint, system restrict the undo terminate action. 
  - For that, system shows proper dialog. See this //TODO


## Delete

- When individual is deleted, 
  - If individual is referred  as `Individual` in `Joint` or as `deceased` in Estate, delete is not allowed
  - If Individual is being referenced other than above `Joint` and `Estate` for e.g. as `Beneficiary` in `Trust`, then system deletes Individual but keeps corresponding Contact as it is 
  - If Individual is not being referenced anywhere in application, then Individual and its corresponding Contact is also deleted. 
- Other legal entities can be deleted anytime

## UI Requirements

See mockups

- [Individual](https://drive.google.com/drive/u/0/folders/1AiOKWn-dF54_9tZ_e4M-7PPhcLNPrfYV)
- [Joint](https://drive.google.com/drive/u/0/folders/1ndv-V3XBKHnA7gg_v9YK99o6_b9Ybj-x)
- [Partnership](https://drive.google.com/drive/u/0/folders/1pz49vTxi-G_5akRIZldifbmwWGPxsMKp)
- [Trust](https://drive.google.com/drive/u/0/folders/1A7_nX8sogd3ntkqPAPmbxAtUPz8EPaBO)