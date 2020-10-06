# Athena Assets

This document lists all assets that are being used to run Athena environment.

## Amazon EC2 Instances

### athena (prod)

- It is a Production server

### athena2 (staging)

- It is a Staging server

### jenkins, nexus
- It has Jenkins, which builds microservices and deploys on server
- It also has nexus3, which hosts private Java libraries and NPM packages

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
- Stores Docker images of each microservices.
- Both Staging and Production environments docker images are hosted here

### Backup Plan
None. We presume AWS won't mess up and we can anyway create it from the Source code.

## Amazon S3

### athena-backups
- Used to store Github source code backup
- `sourcecode` directory within this bucket, has 30 days lifecycle policy. 

### Backup Plan
- None.

## Firebase
- Store application's meta data (this is very tiny amount at the present)
- PWA web application is hosted on Firebase Hosting.
- All projects are created using `athena@clariusgroup.com` Google service account.
- Projects:
    - [Athena Test](https://console.firebase.google.com/u/0/project/athena-test-b48d9/overview)
    - [Athena Admin Test](https://console.firebase.google.com/u/0/project/athena-admin-test/overview)
    - [Athena Staging](https://console.firebase.google.com/u/0/project/athena-staging-a5666/overview)
    - [Athena Admin Staging](https://console.firebase.google.com/u/0/project/athena-admin-staging/overview)
    - [Athena Production](https://console.firebase.google.com/u/0/project/athena-prod-5fa03/overview)
    - [Athena Admin Production](https://console.firebase.google.com/u/0/project/athena-admin-prod/overview)
- All **admin** projects are used for respective environment's Admin Interface

### Backup Plan
- We have daily backup of whole environment in place. Firebase Realtime database is being backed up via it. See [backup/restore](./backup-restore.md) for more details.
- Hosting: We don't need it as we can always build it again.

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
| athena-v2.clariusgroup.com   | Rewrite PWA web application |
| athena.clariusgroup.com      | Web application             |
| auth.clariusgroup.com        | OAuth2 server               |
| auth-user.clariusgroup.com   | OAuth2 user server          |
| auth-client.clariusgroup.com | OAuth2 user client server   |
| authelia.clariusgroup.com | Authelia authentication server for Admin interface   |

### Staging: App Domains
| Domain                               | Purpose                     |
|--------------------------------------|-----------------------------|
| athena2-v2.clariusgroup.com          | Rewrite PWA web application |
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