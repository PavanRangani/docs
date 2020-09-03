# Setup server for new environment 

[[toc]]

## Summary
- Setup server with Ubuntu
- Install required tools
- Configure network and DNS
- Misc configuration
- Setup Deployment project
- Install and configure MySQL
- Setup Google Client
- Create Firebase Project
- Start environment
- Setup Jenkins jobs

> Sections mentioned with `Dreamworld Specifics` are required to be performed only if server is being setup at Dreamworld's. They would likely be test environments.

## Setup server with ubuntu 16 
- 4 GB RAM
- 20 GB `/` partition
- 20 GB for external HDD (mount at `/media/data`) which is used for:
  - deployment project
  - environment specific configurations
  - docker service’s own data
  - logs
  - docker’s data
- User name: ubuntu (for convenience)


### Update OS
```bash
sudo apt-get update 
sudo apt-get upgrade
sudo reboot
```

## Install docker and docker-compose
- Install docker and docker-compose using [this guide](./docker.md)

### Dreamworld Specifics
- Configure credentials for private docker(dream world) registry
```bash
mkdir ~/.docker
vim ~/.docker/config.json
```

::: details config.json
Get it from any other running environment ;)
:::

- Docker-compose command hangs for while so we need to solve using [this guide](https://dw.dreamworld.pro/system-admin-docs/docker/troubleshooting/troubleshooting.html#docker-compose-command-hangs-for-while).

===========

## Setup DNS records

Here, it is presumed base domain is `dream-world.in` and environment name is `athena`. Replace them accordingly.

- athena.dream-world.in (create A record)
- auth.athena.dream-world.in (create CNAME)
- auth-user.athena.dream-world.in (create CNAME)
- auth-client.athena.dream-world.in (create CNAME)

## Misc configuration

### Increase vm.max_map_count as Elasticsearch needs it
- Increase `vm.max_map_coun` using [this guide](https://dw.dreamworld.pro/system-admin-docs/elasticsearch/howto.html#increase-vm-max-map-count)

## Move docker data and logs
- Move docker's data to `/media/data` [this guide](./docker.md)
- Move docker logs to journald using [this guide](./docker.md)

=============

## Generate SSH keys for server itself and add to athena-devops Github user
- Create SSH key
- Add it to `athena-devops` Github user.

## Add SSH keys to allow access this server
- jenkins
- Chetan
- Chirag
- Ajay
- Any other if required.

## Dreamworld Specific: Generate ssl on dw-gateway
- Generates ssl Using [this guide](https://dw.dreamworld.pro/system-admin-docs/ssl-certificates/dw-gateway.html#how-to-add-new-domain-to-existing-ssl-certificates) 
- copy this ssl to athena env at respective location
- restart nginx

## Dreamworld Specific: configure proxy on dw-gateway

- Add nginx configuration on dw-gateway using [this guide](https://dw.dreamworld.pro/system-admin-docs/ssl-certificates/dw-gateway.html#how-to-add-new-domain-in-dw-gateway)
- domains
    - athena.dream-world.in
    - auth.athena.dream-world.in
    - auth-user.athena.dream-world.in
    - auth-client.athena.dream-world.in
- Restart http-gateway service.

============

## Setup project 

> We clone deployment project from Github.

```bash
cd /media/data/
sudo mkdir athena-deployment
sudo chown -R ubuntu:ubuntu athena-deployment
cd athena-deployment/

#clone deployment_project
git clone git@github.com:clarius-athena/deployment.git  
cd deployment 

#Switch to desired branch
git checkout -b env-test origin/env-test
cd ..
mkdir data
mkdir config-local
cd config-local/
```

- Setup environment variables with real values

```bash
touch config.sh
// Go through comments of the file and update it as needed. It has basic configurations like Base domain etc.
// Configure its contents as mentioned in sample-config file of project.
// OR Copy from any other environment. (if it is closer to what you are setting up)
```

- Update ~/.profile to load `config.sh` variables on each login.

```bash
vim ~/.profile

# Add following lines at the end of file
set -a
source /media/data/athena-deployment/config-local/config.sh
```

- Logout and Re-login to verify environment variables are loaded.

```bash
echo $ATHENA_HOME
```
- it's should say /media/data/athena-deployment

## Install and Configure MySQL server

> We are using standalone MySQL server here as Staging and Production uses RDS. So to be consistent with the setup, we are not using MySQL docker container.

> v5.6 is IMPORTANT.

```bash
sudo add-apt-repository 'deb http://archive.ubuntu.com/ubuntu trusty universe'
sudo apt-get update
apt-get install mysql-server-5.6 -y
```

### Create users and db

```
mysql -uroot -p
```

- create user `athena-server`

```bash
mysql> CREATE USER '$ENVNAME-athena-server'@'%' IDENTIFIED BY '$PASSWORD';
mysql> GRANT ALL PRIVILEGES ON * . * TO '$ENVNAME-athena-server'@'%';
mysql> FLUSH PRIVILEGES;
```

- create database `athena_server`

```bash
CREATE DATABASE $ENVNAME_athena_server;
```

===============

## Setup Google client 

Create `Google client`
- We would use a common service account to generate it. It is `athena@clariusgroup.com`
1. Login to Google cloud [console](https://console.cloud.google.com/)
2. Create a new Project
  - name: `athena-test`
  - organization: `No organization`
3. Create Oauth Consent Screen. 
  - Go to > API & Services > OAuth2 Consent Screen.
  - Choose User Type > External.
  - Click on Create.
  - Application Name:
    - `athena test`
  - Authorized Domains:
    - `dream-world.in` (it would be your root domain)
  - Application Home link:
    - `https://athena.dream-world.in` 
  - Application Privacy Link:
    - `https://athena.dream-world.in/privacy-policy.html` 
  - Application Terms of Service Link:
    - `https://athena.dream-world.in/terms-of-use.html` 
  - Save it.
4. Create OAuth ID (client)
  - Go to > API & Services > Credentials
  - Click on Create Credentials button
  - Select OAuth client ID
  - Application Type:
    - `Web application`
  - Name: 
    - `Web Client 1`
  - Authorized Javascript Origins:
    - `https://athena.dream-world.in` 
  - Authorized redirect URLs:
    - `https://auth.athena.dream-world.in/callback?s=google`
  - Create it.

- Once you have ClientID/Secret, you need to update `config.sh` on server for following configuration variables:

```bash
ATHENA_OAUTH2_GOOGLE_CLIENT_ID=
ATHENA_OAUTH2_GOOGLE_CLIENT_SECRET=
```

## Create Firebase project

- Open Firebase [Console](https://console.firebase.google.com/), using service account: `athena@clariusgroup.com`

- Create a new Project
    - e.g. `athena-test`
    - Do not enable Analytics.

- Create firebase realtime database
	- Go to Database
	- Create Realtime database. (Make sure you click button for Realtime database, not firestore)
	- Select `Start in locked mode`

- Create firebase authentication secrets and add to config.sh file
    - Go to Google Cloud Platform console (`Project Settings > Service accounts > Other service accounts`)
    - It will open Google cloud platform
      -  Click on `firebase-adminsdk` service account
      -  Switch to Edit mode
      -  Click on Create Key
          -  Select JSON
          -  Click Create, it will download JSON file.

-  Update following veriable in `config.sh`

```bash
ATHENA_FIREBASE_PROJECT_ID=
ATHENA_FIREBASE_TYPE=service_account
ATHENA_FIREBASE_PRIVATE_KEY_ID=
ATHENA_FIREBASE_PRIVATE_KEY=$'------KEY------'
ATHENA_FIREBASE_CLIENT_EMAIL=
ATHENA_FIREBASE_CLIENT_ID=
ATHENA_FIREBASE_AUTH_URI=
ATHENA_FIREBASE_TOKEN_URI=
ATHENA_FIREBASE_AUTH_PROVIDER_X509_CERT_URL=
ATHENA_FIREBASE_CLIENT_X509_CERT_URL=
```

### Generate firebase cli token

> It is used to run `firebase` cli commands on the server.

- `firebase login:ci`
  - Login
  - After login, it will print token on the console.
- Update `config.sh` for variable: `ATHENA_FIREBASE_TOKEN_ID=`


### Update firebase configuration for project
```bash
ATHENA_FIREBASE_APIKEY=`Project Settings > General > WEB_API_LEY`
##Just change subdomain to your projectid
ATHENA_FIREBASE_AUTHDOMAIN=athena-test.firebaseapp.com
ATHENA_FIREBASE_DATABASEURL=https://athena-test.firebaseio.com
ATHENA_FIREBASE_SECRET=`Project Settings > Service accounts > Database secrets > Secret`
```

## Start services
- For Fresh environment, all services shall be started one by one. Let one start and than only start another. It is to ensure that, each service is able to bootstrap its required data properly.
- We have created a `start.sh` script for same.

## Setup jenkins job
- Using [this guide](./setup-jenkins-jobs.md)

## References
- [Microsoft Auth Provider](https://github.com/umputun/remark42#microsoft-auth-provider)