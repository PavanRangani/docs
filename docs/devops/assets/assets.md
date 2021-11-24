# Athena Assets

This document lists all assets that are being used to run Athena environment.

## Amazon EC2 Instances

### athena (prod)

- It is a Production server

### athena2 (staging)

- It is a Staging server

### jenkins, nexus
- It has Jenkins, which builds microservices from the source code and deploys on respective server of the environment
- It also has [nexus3](https://athena-nexus.clariusgroup.com/), which hosts private Java libraries and NPM packages (They both are built from the source code)

### Backup Plan
- `athena (prod)` and `athena2 (staging)` both are being backed up via AWS Backup service on daily basis. See [EC2 Backup](../aws/ec2-backup.md) for detailed information.
- For Jenkins instance, we will periodically update base OS, so at that time, its backup would be created manually via AMI.
- We also have daily backup of whole application, which is useful to restore any archive for the given time. It does not need help from System Admin. See [backup/restore](./backup-restore.md) for more details.

## Amazon RDS
- Athena has single MySQL server on instance named `athena-rds`.
- Both Staging and Production environment uses **SAME** MySQL server, but with different database names

### Backup Plan
- Daily backup with 7 days retention via RDS' default backup
- We also have daily backup of whole application, which is useful to restore any archive for the given time. It does not need help from System Admin. See [backup/restore](./backup-restore.md) for more details.

## Amazon ECR
- Stores Docker images of each microservices, which are built from source code using Jenkins
- Both Staging and Production environments docker images are hosted here

### Backup Plan
None. We presume AWS won't mess up. And if it does, we can anyway create it from the Source code.

## Amazon S3

| S3 Bucket                       | Purpose                     |
|------------------------------|-----------------------------|
| backups-athena   | Used for backup of anything other than environment wise backups. `sourcecode` directory is used to store Github source code backup, which has 30 days lifecycle policy.  |
| athena-athena-test1 | Test environment's bucket used by `athena-server` microservice | 
| athena-athena-staging | staging environment's bucket used by `athena-server` microservice | 
| athena-athena-prod | Production environment's bucket used by `athena-server` microservice | 
| athena-athena-test1-backup | Test environment's daily backup |
| athena-athena-staging-backup  | Staging environment's daily backup |
| athena-athena-prod-backup | Production environment's daily backup |


### Backup Plan
- None.

## Firebase
- We are using Firebase Realtime Database as well as Firebase Hosting.

### Firebase Hosting
- PWA web application is hosted on Firebase Hosting. It is a static contents like HTML, Javascript and CSS. It does not have any confidential data

#### Backup plan
- Firebase Hosting provides to rollback to previously deployed versions via its console.
- We don't have any other mechanism for backup as we can always build it again.

### Firebase Realtime Database
- All projects are created using `athena@clariusgroup.com` Google service account.
- Store application's metadata. This is very tiny amount at the present. [See this JSON to get an idea of data stored](./firebase-data.md). To name few, it has `lastUpdated` timestamp of groups like contacts, legal entities etc and also have webapp (PWA) version and under-maintenance information.
- It also stores [reports download requests](../../prd/aggregated-report/download-report.md), which are cleaned up periodically by server app.
- There aren't any confidentcial data stored on any of the firebase projects.
- Projects:
    - [Athena Test](https://console.firebase.google.com/u/0/project/athena-test-b48d9/overview)
    - [Athena Admin Test](https://console.firebase.google.com/u/0/project/athena-admin-test/overview)
    - [Athena Staging](https://console.firebase.google.com/u/0/project/athena-staging-a5666/overview)
    - [Athena Admin Staging](https://console.firebase.google.com/u/0/project/athena-admin-staging/overview)
    - [Athena Production](https://console.firebase.google.com/u/0/project/athena-prod-5fa03/overview)
    - [Athena Admin Production](https://console.firebase.google.com/u/0/project/athena-admin-prod/overview)
- Admin projects:
    - All **admin** projects are used for respective environment's Admin Interface
    - They are used to store metadata of the backup. It has fields like: 
        - `backupId`: Random timestamp
        - `notes`: Notes added during the backup operation. 
        - `status`: Status of backup/restore operation
        - `timestamp`: Random timestamp
        - `type`: `BACKUP` or `RESTORE`

#### Backup Plan
- We have daily backup of whole environment in place. Firebase Realtime database is being backed up via it. See [backup/restore](./backup-restore.md) for more details.

## Java and UI libraries
- All Private Java libraries and NPM packages are hosted on Nexus repository (on `jenkins, nexus` instance)
- We will periodically backup it manually whenever there are base OS updates

## Source code (Github)
- All Git repositories within `clarius-athena` organization are being backup on daily basis via Jenkins job and uploaded to S3.
- See [Backup source code](./backup-source-code.md) for details

## Google Cloud Projects
- Each firebase project creates a corresponding Google Cloud Project.
- For Staging environment's Google Login, we are using [athena-staging](https://console.cloud.google.com/apis/credentials?authuser=0&folder=&organizationId=&project=athena-staging-a5666)

## Microsoft Azure AD
- It is used for Microsoft login on Production environment.
- It is created using `athena@clariusgroup.com` service account.

## Domains

### Production: App Domains
| Domain                       | Purpose                     |
|------------------------------|-----------------------------|
| athena-v2.clariusgroup.com   | Rewrite PWA web application, now resolves to athena.clariusgroup.com |
| athena.clariusgroup.com      | Web application             |
| auth.clariusgroup.com        | OAuth2 server               |
| auth-user.clariusgroup.com   | OAuth2 user server          |
| auth-client.clariusgroup.com | OAuth2 user client server   |
| authelia.clariusgroup.com | Authelia authentication server for Admin interface   |

### Staging: App Domains
| Domain                               | Purpose                     |
|--------------------------------------|-----------------------------|
| athena2-v2.clariusgroup.com          | Rewrite PWA web application, now resolves to athena.clariusgroup.com |
| athena2.clariusgroup.com             | Web application             |
| auth-athena2.clariusgroup.com        | OAuth2 server               |
| auth-user-athena2.clariusgroup.com   | OAuth2 user server          |
| auth-client-athena2.clariusgroup.com | OAuth2 user client server   |
| authelia-athena2.clariusgroup.com | Authelia authentication server for Admin interface   |

### Other Domains
| Domain                               | Purpose                                |
|--------------------------------------|----------------------------------------|
| athena-jenkins.clariupsgroup.com     | Athean Jenkins                         |
| athena-nexus.clariusgroup.com        | Athena Nexus repository                |
| athena-npm-snapshot.clariusgroup.com | Athena Private NPM snapshot repository |
| athena-npm-release.clariusgroup.com  | Athena Private NPM Release repository  |
| athena-npm.clariusgroup.com          | Athena Private NPM group repository    |