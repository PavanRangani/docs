# Docker

## Install Docker

```bash
sudo apt install -y apt-transport-https ca-certificates curl    software-properties-common 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt install docker-ce
```

## Install docker-compose

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl status docker
```

## Give docker group permission to user

```bash
sudo usermod -aG docker ${USER}
```

===============

> Below are extra steps, perform them only if you need

## Move docker directory to `/media/data`

```bash
sudo service docker stop
sudo mv /var/lib/docker /media/data
sudo vim /etc/docker/daemon.json
#file contents: 
{
  "graph": "/media/data/docker"
}
sudo service docker start
```

## Move Docker logs to journald

- stop journald service and update configuration

```bash
sudo systemctl stop systemd-journald
sudo vim /etc/systemd/journald.conf

#add this value at the end.
RateLimitInterval=0
RateLimitBurst=0
ForwardToSyslog=no
```

- remove journald data (we don’t care for existing jornal data, so remove it completely.)

```bash
sudo rm -rf /var/log/journal
```

- Move journald to /media/data

```bash
cd /media/data
sudo mkdir journal
sudo ln -s /media/data/journal /var/log/journal
sudo systemctl restart systemd-journald
sudo systemctl status systemd-journald
```

- Configure docker to use journald log driver

```bash
sudo service docker stop
sudo vim /etc/docker/daemon.json
{
  "log-driver": "journald"
}
sudo service docker start
```