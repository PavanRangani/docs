# Requirement

## Auto Backup daily

- System takes backup at daily night on configured time.

## Create new Backup

- In addition to Auto backup, Allows user to manually start Backup operation anytime. While creating new backup, it allows user to enter any description.
- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.
- When Backup operation is in progress, Main application will remain on under maintenance.

#### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScVNMFnAKI5ItCvQ55XqdUh4)



## Restore any existing Backup

- Allows user to Restore any of the existing Backup.
- `Restore` action is only available for Backup  whose status is `COMPLETED`.  For Backup whose status is  `IN_PROGRESS` or  `FAILED`, Restore action is not available
- Restore operation is peformed in two part. First it takes backup of current system and once backup is completed it starts the Restore operation.
- On Restore action, system shows confirmation dialog to user. In this confirmation dialog. it shows random 6 alphanumeric characters which user need to type to confirm.
- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.
- When Backup or Restore operation is in progress, Main application will remain on under maintenance.


#### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScf5yC71vZDl-fD381S8snT8)



## Edit note

- Allows user to edit Notes anytime

#### UI Requirement

[Mockups](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScWs4YYDYWMt9Y37H8i6FGXo)



## Auto delete old records

- Doesn't allow to manually delete any Backup or Restore record
- Retention time for backup/restore record is 60 days which is configurable on server.  System auto deletes backups which are 60 days old. 
- Auto or Manual - both type of backup will be deleted.

## Browse Backup/Restore records

- Shows all of the Backup/Restore records in descending order of Date (Latest record is shown at top)

### UI Requirement

[Mockup](https://gallery.io/projects/MCHbtQVoQ2HCZfBS-vT-eRyP/files/MCEJu8Y2hyDScYBa0jsXvdXFRgbz7vC_mN0)

- Shows one button to take new backup. 

- When Backup or Restore operation is in progress, shows proper message and new backup button won't be available

- Table Columns:
  - Status
    - Shows icon for Status can be one of the: `IN_PROGRESS`, `SUCCESS`, `FAILED`
  - Date
    - Shows date and time in user's local timezone
  - Notes
    - Shows full notes. In case of overflow shows it in new line

- On hover of Completed backup, shows RESTORE action

- Shows Edit action for each records.

- Restore records are shown highlighted

  ​

