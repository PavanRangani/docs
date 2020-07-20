# Setup Jenkins

[[toc]]

## Summary of Steps
- Install JDK8
- Install Jenkins
- Install nginx
- Install certbot
- Install aws-cli client

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
::: details

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