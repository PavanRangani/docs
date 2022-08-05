# Nexus

[[toc]]

- Athena has its nexus3 server, which has `maven` and `npm` registry.
- Nexus3 is setup via `docker-compose`
- nexus repositories are accessible via [multiple URL](../assets/assets.md). They are configured via `nginx` proxy and SSL via `certbot`. Both being on host machine directly.

## Summary of steps
- Create nexus3 docker services
- Create nginx proxy and obtain SSL certificates via certbot
- Configure NPM registry within nexus


## Setup nexus3 via docker-compose

```bash
cd /media/data
sudo mkdir nexus
sudo chown -R ubuntu:ubuntu nexus
cd nexus
vim docker-compose.yml
```

::: details docker-compose.yml
```yml
version: "2"

services:
  nexus:
    image: sonatype/nexus3:latest
    restart: always
    volumes:
      - /media/data/nexus-data:/nexus-data
    ports:
      - "8081:8081"
```
:::

## Misc tweaks
- `nexus` user inside container has `200` userid so we need to make `200` an owner of `nexus-data` directory.

```bash
cd /media/data
mkdir /nexus-data
sudo chown -R 200 /nexus-data
```

### Reference: 
- [how to nexus permission](https://medium.com/faun/deploy-sonatype-nexus-repository-oss-v3-with-docker-a50225fe661e)

## start nexus 

```bash
cd /media/data/nexus
docker-compose up -d

## see docker logs
docker-compose logs -f
```

## Configure nginx proxy for maven and npm registries

### nexus.conf

```bash
sudo vim /etc/nginx/sites-available/nexus.conf
```

::: details nexus.conf
```bash
server {
    server_name  athena-nexus.clariusgroup.com;

    location / {
        proxy_pass http://localhost:8081;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }

    listen       80;
}
```

:::

### npm.conf

```bash
sudo vim /etc/nginx/sites-available/npm.conf
```

::: details npm.conf
```bash
server {
    server_name  athena-npm-snapshot.clariusgroup.com;

    location / {
        proxy_pass http://localhost:8081/repository/npm-internal-snapshot/;
#        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto "https";
    }

    listen 80;
}

server {
    server_name  athena-npm-release.clariusgroup.com;

     location / {
        proxy_pass http://localhost:8081/repository/npm-internal-release/;
        #proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto "https";
    }

    listen 80;

}

server {
    server_name  athena-npm.clariusgroup.com;

    location /repository/npm/ {
        proxy_pass http://localhost:8081;
       # proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto "https";
    }

    location / {
        proxy_pass http://localhost:8081/repository/npm/;
        #proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto "https";
    }

    listen 80;
}
```
:::

### Generate SSL 

```bash
sudo nginx -t
sudo certbot --nginx
```

> Choose Redirect all to HTTPS when `certbot` asks for

## Configure Maven repository
By default, nexus create `maven-snapshots` and `maven-release` maven2 repositories. So we don't need to create them.

## Configure NPM repository

- Create following NPM **HOSTED** repositories
    - `npm-internal-snapshot`
    - `npm-internal-release`
- Create following NPM **GROUP** repository
    - `npm`
    - Add above created hosted repositories as group members in following order:
        - `npm-internal-snapshot`
        - `npm-internal-release`

## References
- [DevOps: Athena’s all services built shall be possible from Athena’s own Jenkins.](https://kerika.com/app/C7_/board/BFG6C/BR3Ws?v=workflow&tab=attachments)

## Update nexus
We have a [jenkins job](https://athena-jenkins.clariusgroup.com/view/nexus/job/update-nexus/) for it. 

- Run the [jenkins job: update-nexus](https://athena-jenkins.clariusgroup.com/view/nexus/job/update-nexus/)
- Verify [athena-nexus](https://athena-nexus.clariusgroup.com/) loads correctly
