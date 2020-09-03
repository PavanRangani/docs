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