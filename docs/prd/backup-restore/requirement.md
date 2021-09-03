# Requirement

## Auto Backup daily

- System takes backup at daily night on configured time.

## Create new Backup

- In addition to Auto backup, Allows user to manually start Backup operation anytime. While creating new backup, it allows user to enter any description.
- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.
- When Backup operation is in progress, Main application will remain on under maintenance.

#### UI Requirement

[Mockups](https://drive.google.com/file/d/1rfPPliOYpJUvWBNMCeeHMqKjup8zGc3f/view?usp=sharing)



## Restore any existing Backup

- Allows user to Restore any of the existing Backup.
- `Restore` action is only available for Backup  whose status is `COMPLETED`.  For Backup whose status is  `IN_PROGRESS` or  `FAILED`, Restore action is not available
- Restore operation is peformed in two part. First it takes backup of current system and once backup is completed it starts the Restore operation.
- On Restore action, system shows confirmation dialog to user. In this confirmation dialog. it shows random 6 alphanumeric characters which user need to type to confirm.
- At a time, only one Backup or Restore operation can be in progress. So doesn't allow to start another Backup or Restore operation until one operation is in process.
- When Backup or Restore operation is in progress, Main application will remain on under maintenance.


#### UI Requirement

[Mockup](https://drive.google.com/file/d/1XPo2SNM5nvl_WV_jAtLDCYNYzXKws5fJ/view?usp=sharing)



## Edit note

- Allows user to edit Notes anytime

#### UI Requirement

[Mockups](https://drive.google.com/file/d/1TwgXa0b1RuAIbDVsgWQxxwwwhbZ0SEFV/view?usp=sharing)



## Auto delete old records

- Doesn't allow to manually delete any Backup or Restore record
- Retention time for backup/restore record is 60 days which is configurable on server.  System auto deletes backups which are 60 days old. 
- Auto or Manual - both type of backup will be deleted.



## Restart

- Allows to restart all services
- On Restart action, system shows confirmation dialog to user. In this confirmation dialog. it shows random 6 alphanumeric characters which user need to type to confirm.
- When Restart is in progress, all other actions like Backup/Restore won't be available.
- When Restart operation is in progress, Main application will remain on under maintenance.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1KC6lypL74n8weldnrNYblK3QuPD0MVB3/view?usp=sharing)

## Download Source Code

- Allows to download sources code as tar file
- It will create tar file of the source code and put it on S3 bucket and provides link to download that file from bucket.

### UI Requirement

[Mockup](https://drive.google.com/file/d/1fcxZAVWflbGTJwiSpW1IVVn2E6B00YCc/view?usp=sharing)

## Browse Backup/Restore records

- Shows all of the Backup/Restore records in descending order of Date (Latest record is shown at top)

### UI Requirement

[Mockup](https://drive.google.com/file/d/1Hixy63V6GwowhrHwMA4lI7Pk6QHq8qVq/view?usp=sharing)

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


