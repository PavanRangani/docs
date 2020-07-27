# Requirement

## Auto Backup daily

- System takes backup at daily night on configured time.

## Create new Backup

- In addition to Auto backup, Allows user to manually start Backup operation anytime. While creating new backup, it allows user to enter any description.

- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.

- When Backup operation is in progress, application will remain on under maintenance.

## Restore any existing Backup

- Allows user to Restore any of the existing Backup.
- `Restore` action is only available for Backup  whose status is `COMPLETED`.  For Backup whose status is  `IN_PROGRESS` or  `FAILED`, Restore action is not available
- Restore operation is peformed in two part. First it takes backup of current system and once backup is completed it starts the Restore operation.
- On Restore action, system shows confirmation dialog to user. In this confirmation dialog. it shows random 6 alphanumeric characters which user need to type to confirm.
- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.
- When Backup or Restore operation is in progress, application will remain on under maintenance.

## Edit note

- Allows user to edit Notes anytime

## Auto delete old Backup records

- Doesn't allow to manually delete any Backup

- Retention time for backup is 7 days which is configurable on server.
- System auto deletes backups which are 7 days old. Auto or Manualy both type of backup will be deleted.

## Browse Backup records

- Shows all of the Backup records in descending order of Date (Latest record is shown at top)

### UI Requirements

- Shows one table
- Table Columns:
  - Date
    - Shows date and time in user's local timezone
  - Backup File Name
    - Name of the Backup file
  - Status
    - Status can be one of the: `IN_PROGRESS`, `SUCCESS`, `FAILED`
  - Notes
    - Shows full notes. In case of overflow shows it in new line

- Vertmore actions: `Restore`
- `Restore` action is only available for the Backups whose status is `COMPLETED`.  For Backup whose status is  `IN_PROGRESS` or  `FAILED`, Restore action is not available



## Browse Restore records

- Shows all of the Restore records in descending order of Date

### UI Requirement

- Shows one table
- Table Columns:
  - Date
    - Shows date and time in user's local timezone
  - Backup File Name
    - Name of the Backup file from which Restore operation was initiated
  - Status
    - Status can be one of the: `IN_PROGRESS`, `SUCCESS`, `FAILED`
  - Notes
    - Shows full notes. In case of overflow shows it in new line

