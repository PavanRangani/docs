# Backup Source code

## Summary of the setup
- All our repository are hosted on Github, under `clarius-athena` organization.
- We backup Organization as whole using [ghorg tool](https://github.com/gabrie30/ghorg)
- It is done via Jenkins job, which is run every Sunday 00:00 UTC
- It uploads the source code archive to S3 bucket named [backups-athena](https://s3.console.aws.amazon.com/s3/buckets/backups-athena/sourcecode/?region=us-west-2&tab=overview) in `sourcecode` directory
- Retention is managed  via S3 lifecycle policy of `backups-athena` (30 daays)

## How its setup
It is setup on Jenkins machine.

::: warning
Follow all below steps as `jenkins` user, unless specified.
:::

### Install linuxbrew

```bash
sudo apt install linuxbrew-wrapper
```

Create `.profile` file with following content.

::: details .profile
```bash
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=~/.linuxbrew/bin:$PATH
```
:::

### Install ghorg

```bash
brew install gabrie30/utils/ghorg
mkdir -p $HOME/.config/ghorg
curl https://raw.githubusercontent.com/gabrie30/ghorg/master/sample-conf.yaml > $HOME/.config/ghorg/conf.yaml
```


### Create Github Personal Token

Create Personal Token for `athena-devops` user's with `repo:all` scope.

### Create s3 bucket

- Bucket Name: `backups-athena` in Oregon region
- Encrypt Object
- Block all public access: `ON`

### Create IAM role for Jenkins EC2 machine
We will use IAM role attached with the instance, so we don't need to configure AWS Key etc. This is helpful as we don't need to rotate keys when they are changed.

- Role name: `JenkinsEC2Machine`
- Policy: 
    - `AmazonS3FullAccess`
- Attach the newly created role to EC2 instance from Instances tab

### Create Jenkins Job

[backup-github-repos](https://athena-jenkins.clariusgroup.com/job/backup-github-repos/configure)

> Here is sample, this may get outdated as we update Jenkins job for any future updates, but this is just to get an idea of the setup.

```bash
FILE_NAME=athena-`date +%Y-%m-%d_%H-%M-%S`
FILE_PATH=./github-backup/$FILE_NAME

echo "directory path in workspace"
echo $FILE_PATH

ghorg clone clarius-athena --token=GITHUB_TOKEN --backup=true --path=$FILE_PATH

echo "Creating tarball"
tar -czf ./github-backup/$FILE_NAME.tar.gz $FILE_PATH

echo "Uploading to S3"
aws s3 cp ./github-backup/$FILE_NAME.tar.gz s3://backups-athena/sourcecode/

echo "Deleting github-backup directory"
rm -rf ./github-backup
```