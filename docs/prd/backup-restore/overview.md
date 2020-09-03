# Overview

We have implemented way to backup and restore of whole environment.

To make backup/restore process very easy for Admin, this page is created.

From this page, Admin can see details of all Backup and Restore operation. If admin wants to to Restore any particular backup snapshot, he can do it by just clicking `Restore` action against the backup item.

This page is not developed as a part of current Athena application. Its a separate application. It's secured with basic authentication. 

This page shows all updates in realtime.

## Entity

#### Type

It can be either `Backup` or `Restore`

#### Date

Date and Time when operation is started

#### Status

Status can be one of the: `IN_PROGRESS`, `SUCCESS`, `FAILED`

Initial status is `IN_PROGRESS`. If operation fails due to any reason, its status is set to `FAILED`. If operation succeeds, its status is set to `COMPLETED`

#### Notes

A description about the Backup/Restore. Its mandatory field.

For Auto generated Backup at daily night, system sets description to `Automatic: Scheduled`. 

For Manual Backup, system allows user to enter description. It will be set in this format - `Manual: {User entered description}`

For the Backup which is auto generated before any restore operation, system sets description `Automatic: Before Restore`

For Restore, system allows user to enter description.

User can add/edit this description anytime.



## Edge case

### What happens if any Manual backup/restore operation is in progress at the time of daily backup?

System does not allow such conditions. [See more details](../../devops/assets/backup-restore.md)