# AWS EC2 Backup  (Automated)

[[toc]]

## How it is setup

### Summary
- Backup using AWS's default [AWS Backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html) service, which allows to automatically create AMIs of EC2 instances
- It creates AMI of defined instances and it will auto delete/expire AMI as per retention policy.

### Steps
- Create Backup plan and rule
- Assign resources (via tag)

### Create Backup plan
- Open AWS Backup's [Manage Backup plans](https://us-west-2.console.aws.amazon.com/backup/home?region=us-west-2#backupplan) page
- Click on `Create Backup Plan` button
- Select `Build a new plan` option
- Backup plan name as you like. e.g `Daily-with-1week-retention`
- Rule name: Same as plan name
- Frequency: `Daily`
- Backup window: `Use default window`
- Transiton to cold storage: `Never`
- Expire: `1 week`
- Backup Vault: `Default`
- Region: Do not select it, leave blank as it is optional
- Finally, click on `Create plan` button.

### Assign resources
- Under `Resource assignments` section, click on `Assign resources` button
- Resource assingment name as you like. e.g `Tag-Backup-True`
- IAM role: `Default role`
- Assign Resources: 
    - Assign by: `Tags`
    - Key: `Backup`
    - Value: `True`
- Click on `Assign resources` button to complete process.

You can see the backup plan now on [AWS backup dashboard](https://us-west-2.console.aws.amazon.com/backup/home?region=us-west-2#dashboard).

### Notes
- Jobs: Backup jobs that were executed.
- Backup creates AMI, so they are available in EC2 > AMI section.


### References
- [How to Perform AWS EC2 Backup: Step-By-Step Guide](https://www.nakivo.com/blog/perform-aws-ec2-backup-step-step-guide/)

## How to add a new EC2 machine to backup?
- Just add the `Backup`:`True` as tag to EC2 machine you want to backup on daily backup.

## How to remove an existing EC2 machine from backup?
- Just remove the `Backup` tag from EC2 machine, it will no longer be backed up.