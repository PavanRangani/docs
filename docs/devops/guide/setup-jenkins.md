# Setup Jenkins

[[toc]]

## Summary of Steps
- Install JDK8
- Install Jenkins
- Install nginx
- Install certbot
- Install aws-cli client
- Install Docker
- Install Firebase Cli
- Install Sentry Cli
- Configure Jenkins to be able to build jobs
  - Github SSH keys
  - Maven (and `.m2/settings.xml` so that it uses Athena Nexus's maven repo)
  - Node (via nvm) (and `.npmrc` so that it uses Athena Nexus' NPM repo)
  - Assign ECR IAM role to Jenkins Machine
- Install `ThinBackup` plugin

## Server specs
- Ubuntu Server 18
- 4 GB RAM
- Disks:
    - root: 16GB
    - /media/data: 40GB

> Configure /media/data volume with fstab, we will use it to store all jenkins data there. It is assumed it is ready.

## Install JDK8
Jenkins need Java 8, so we can't use any latest.

```bash
sudo apt-get update
sudo apt install openjdk-8-jdk openjdk-8-jre
```

Verify JDK is installed properly

```bash
java -version
```

## Install Jenkins

```bash
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins-ci.org/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt-get install jenkins
```

Verify by accessing its web interface
```
curl http://localhost:8080
```

### Create softlink for `/var/lib/jenkins` with `/media/data`

```bash
sudo service jenkins stop
sudo mv /var/lib/jenkins /media/data
sudo ln -s /media/data/jenkins/ /var/lib/jenkins
sudo service jenkins start
```

## Install nginx

```bash
sudo apt-get install nginx
```

### Configure jenkins domain

```bash
sudo vim /etc/nginx/sites-enabled/athena-jenkins.clariusgroup.com
```

::: details contents

```
server{
  server_name athena-jenkins.clariusgroup.com;

  location / {
          proxy_set_header        Host $host:$server_port;
          proxy_set_header        X-Real-IP $remote_addr;
          proxy_set_header        X-Forwarded-For $proxy_add_x_forwarded_for;
          proxy_set_header        X-Forwarded-Proto $scheme;

          proxy_pass http://127.0.0.1:8080;
  }


    listen 80;

}
```
:::

Verify config and reload nginx

```bash
sudo nginx -t
sudo service nginx reload
```

## SSL via LetsEncrypt

```bash
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update

sudo apt-get install certbot python3-certbot-nginx
sudo certbot --nginx
```

## Install aws-cli client

```bash
sudo apt-get install unzip

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

#verify
aws --version
```

### References
- [awscli](https://aws.amazon.com/cli/)
- [Install cliv2 on linux](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html)


## Install Docker and docker-compose

- Install Docker using [this guide](./docker.md)
- Add `jenkins` user to docker group, so it is able to run `docker` commands

```bash
sudo usermod -aG docker jenkins
```

### Misc tools to be able to login to docker ECR registry via CMD

```bash
sudo apt install gnupg2 pass
```

## Install firebase cli

```bash
curl -sL https://firebase.tools | bash
```

## Install Sentry cli

```bash
curl -sL https://sentry.io/get-cli/ | bash
```

## Configure Jenkins to be able to build jobs

::: warning
Perform all of below steps as `jenkins` user (unless specified)
:::

### Add SSH keys of Jenkins user to Github

> Keys shall be genered in `/var/lib/jenkins/.ssh` directory. 

```bash
ssh-keygen -t rsa
```

- Add this public key into `athena-devops` Github user's key.

### Configure maven

```bash
sudo apt install maven
maven -version
```

- Avail this maven installation to Jenkins.
  - Open Jenkins Web interface
  - Go to `Manage Jenkins > Global Tools Configuration > Maven installations`
  - Add maven installation
    - Uncheck `Install Automatically`
    - name: `maven 3.6.0`
    - path: `/usr/share/maven`
  - Save

- Create settings.xml file

```bash
vim ~/.m2/settings.xml
```

::: details settings.xml change ADMIN password
```xml
<settings>
        <mirrors>
                <mirror>
                        <id>nexus</id>
                        <mirrorOf>*</mirrorOf>
                                <url>https://athena-nexus.clariusgroup.com/repository/maven-public</url>
                </mirror>
        </mirrors>

        <servers>
                <server>
                                <id>nexus</id>
                                <username>admin</username>
                                <password>{ADMIN_PASSWORD_TODO}</password>
                </server>
                <server>
                        <id>nexus-releases</id>
                        <username>admin</username>
                        <password>{ADMIN_PASSWORD_TODO}</password>
                </server>
                <server>
                        <id>nexus-snapshots</id>
                        <username>admin</username>
                        <password>{ADMIN_PASSWORD_TODO}</password>
                </server>
        </servers>
        <profiles>
                <profile>
                        <id>nexus</id>
                        <!--Enable snapshots for the built in central repo to direct -->
                        <!--all requests to nexus via the mirror -->
                        <repositories>
                                <repository>
                                        <id>central</id>
                                        <url>http://central</url>
                                        <releases>
                                                <enabled>true</enabled>
                                        </releases>
                                        <snapshots>
                                                <enabled>true</enabled>
                                        </snapshots>
                                </repository>
                        </repositories>
                        <pluginRepositories>
                                <pluginRepository>
                                        <id>central</id>
                                        <url>http://central</url>
                                        <releases>
                                                <enabled>true</enabled>
                                        </releases>
                                        <snapshots>
                                                <enabled>true</enabled>
                                        </snapshots>
                                </pluginRepository>
                        </pluginRepositories>
                </profile>
        </profiles>
<activeProfiles>
                <!--make the profile active all the time -->
                <activeProfile>nexus</activeProfile>
        </activeProfiles>
</settings>

```
:::

### Configure NodeJS

- Open Jenkins Web interface
- Go to `Manage Jenkins > Global Tools Configuration > NodeJS installations`
- Add NodeJS
  - name: `v10.0.0`
  - Version: `NodeJS 10.0.0`
  - Global npm packages to install: `npm polymer-cli firebase-tools yarn gulp grunt bower`
- Save

- Create `.npmrc` file

```bash
vim ~/.npmrc
```

::: details .npmrc
```bash
@dw:registry=https://athena-npm.clariusgroup.com/
```
:::

### Assign AWS ECR IAM role to Jenkins EC2 instance
We will use IAM role attached with the instance, so we don't need to configure AWS Key etc. This is helpful as we don't need to rotate keys when they are changed.

- Role name: `JenkinsEC2Machine`
- Policy: 
    - `AmazonECRFullAccess`
- Attach the newly created role to EC2 instance from Instances tab

###  Install `ThinBackup` plugin


### Add Deployment servers

- Go to `Manage Jenkins > Configure System`
- Add server in `Publish over SSH` section
- Add Jenkins' public to respective servers!

## References
- [DevOps: Athena’s all services built shall be possible from Athena’s own Jenkins.](https://kerika.com/app/C7_/board/BFG6C/BR3Ws?v=workflow&tab=attachments)


## Update Jenkins

- [Prepare Jenkins for Shutdown from UI](https://athena-jenkins.clariusgroup.com/manage/prepareShutdown/)
- Before running following commands, Make sure that isn't any job in build process.
- Create ThinBackup using [Manage Jenkins interface](https://athena-jenkins.clariusgroup.com/thinBackup/)
- SSH into jenkins machines and run following command to update jenkins.

```bash
sudo apt update
sudo apt install jenkins
```

> After Jenkins Update also we need to update plugins

## Update Plugins
- Goto [manage jenkins > goto plugin manager](https://athena-jenkins.clariusgroup.com/manage/pluginManager/)
- In `Updates` columm > `check box on all plugin` and select: `download now and install after restart`


