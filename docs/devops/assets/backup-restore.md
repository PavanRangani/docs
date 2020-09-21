# Backup and Restore Environment

## Preface
- If by mistake any data is manipulated badly, it has a way to restore the earlier data.
- It generates backup of all data on nightly basis, and performs cleanup for older archives based on retention policy (e.g 60 days for Production)
- System is so easy that, it is possible to backup and restore environment without need of System admin.
- System has an Admin Interface, which is accessible only via whitelisted IP addresses and authentication is managed by Authelia.

## Backup

### Which resources are included?
- Configuration
    - `config-local` directory, which holds all configurations
    - git-hash of [deployment](https://github.com/clarius-athena/deployment) project
- Data
    - MySQL databases: `athena-server`, `oauth2-users`, `oauth2-server`
    - Elasticsearch
    - Firebase

> For Docker images, it has backup of its image version tag. They are stored on AWS ECR. So it will be able to fetch the docker image using that tag at any point of time.

### How its done
- [backup.sh](https://github.com/clarius-athena/deployment/blob/master/script/backup.sh) script is created in `deployment` project, which is invoked via [Jenkins job](https://athena-jenkins.clariusgroup.com/view/athena-common/job/backup-environment/).
- It starts under-maintenance for the environment
- Create a tarball containing all of above data. It generates archive locally on the server. Server itself has a daily backup, so we are double secured. See [ec2-backup](../aws/ec2-backup.md)
- It remove under-maintenance for the environment.
- Performs cleanup for older archives that matches retention policy.

### Jenkins job
- [backup-environment] (https://athena-jenkins.clariusgroup.com/view/athena-common/job/backup-environment/)

## Restore

> Restore always generates backup of current environment, and than only it starts restore from given archive.

### How its done
- [restore.sh](https://github.com/clarius-athena/deployment/blob/master/script/restore.sh) script is created in `deployment` project, which is invoked via [Jenkins job](https://athena-jenkins.clariusgroup.com/view/athena-common/job/backup-environment/)
- It needs an input, which is restore archive.
- Puts environment under maintenance
- Generates backup using above backup script
- Destroys current environment
- Restores data and services versions from the given archive.

### Jenkins job
- [restore-environment] (https://athena-jenkins.clariusgroup.com/view/athena-common/job/backup-environment/)

## Extreme scenarios

### When backup or Restore is running and another request for backup or restore is triggered

#### Problem
If we allow this, it may cause data inconsistency or any problem. So we must not allow such operations.

#### Cases
- Backup is running and another Backup is initiated again
- Backup is running and Restore is initiated
- Restore is running and Backup is initiated
- Restore is running and Restore is initiated again

#### How they are handled
- It **DOES NOT** allow any of the above condition. Respective script fails whenever any of the condition are matched.

## Technical implementation
- A new `athena-admin` service is created, which is accessible via username/password
- Admin app invokes Backup or Restore Jenkins job via directly URL with respective parameters like Description or BackupId.
- backup/restore scripts creates and manages firebase data

## References
- [PRD for Admin Interface](../../prd/backup-restore/overview.html)
- [DevOps: Backup and Restore](https://kerika.com/app/C7_/board/BFG6C/BR3Wu)
- [Admin interface for Backup and Restore environment](https://kerika.com/app/C7_/board/BFG6C/BSTtV)