# SSL Certificates

## Summary
- Staging(https://athena2.clariusgroup.com) and Production(https://athena.clariusgroup.com) now using certificates from LetsEncrypt since 08 August 2023. See this [Install LetsEncrypt SSLs for Staging and Production](https://a.kerika.com/acc_5592QvsYWhSIcUe1fVSuMA/board/brd_6nTSOBjzMUjzwvdoCwH8YZ/crd_56LEaeosXX7xgkMafZSuvg?tab=attachments)
- Athena Nexus(https://athena-nexus.clariusgroup.com) and Athena Jenkins(https://athena-jenkins.clarisugroup.com) uses SSLs via LetsEncrypt. (They are via letsencrypt nginx and it has never had any issues) Renewal for it is automated ofcourse.
- Certificates are auto renewed by the `certbot` itself.

## How Production/Staging LetsEncrypt SSL are done

### Install Certbot

See [this official guide](https://certbot.eff.org/instructions?ws=webproduct&os=ubuntufocal)

```bash
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
```

### AWS EC2
- Open HTTP port 80 from `Anywhere` as its required to complete LetsEncrypt HTTP-challenge

### Generate LetsEncrypt certificates
Note:: Certificate name has to be `aristata` as its used inside `nginx` configuration files to load it.

```bash
# production
sudo certbot certonly --cert-name aristata --webroot -w /home/ubuntu/certbot/webroot -d athena.clariusgroup.com -d auth.clariusgroup.com -d auth-user.clariusgroup.com -d auth-client.clariusgroup.com -d authelia.clariusgroup.com

# staging
sudo certbot certonly --cert-name aristata --webroot -w /home/ubuntu/certbot/webroot -d athena2.clariusgroup.com -d auth-athena2.clariusgroup.com -d auth-user-athena2.clariusgroup.com -d auth-client-athena2.clariusgroup.com -d authelia-athena2.clariusgroup.com 
```

### Update configuration of project to use this generated certificates

```bash
sudo chown -R ubuntu:ubuntu /etc/letsencrypt
cd $ATHENA_HOME/config-local
ln -s /etc/letsencrypt ssl
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```

### Register post renewal hook to reload nginx

```
sudo su
cd /etc/letsencrypt/renewal-hooks/deploy/
touch reload-nginx.sh
chmod +x reload-nginx.sh
vim reload-nginx.sh
```

- File contents:
```bash
#!/bin/bash
echo "Reloading nginx container..."
docker exec deployment_nginx_1 nginx -s reload -c /etc/nginx/nginx.conf

```

- DONE

---------

# Below is outdated guide to use CA generated certificates from Namecheap etc.
## Update SSL certificates for stating/production
As we are using certificates from NameCheap (or any other service provider), it has certain expiry date. (e.g we bought for 1year)

So once they expire, we need to buy new SSLs from NameCheap and install them on the respective servers.

> SSL certificate generation is not in the scope of this document, as its already well defined by the respective authority. (e.g NameCheap in this case)

Once generating SSLs from the provider, you would get a zip containing following files:
- STAR_clariusgroup_com.ca-bundle
- STAR_clariusgroup_com.crt

You would also have the Private Key which was used to generate the CSR.

> Following steps are common for staging and production both

- SSH to the server
- backup current certificates

```bash
cd $ATHENA_HOME/config-local/ssl/live
sudo cp -rp aristata aristata-backup
```

- Empty the current SSL files contents

```bash
cd $ATHENA_HOME/config-local/ssl/live/aristata

: > fullchain.pem
: > privkey.pem
```

- Update `fullchain.pem`
    - Combine contents of following files in the **SAME** order in single file.
    - STAR_clariusgroup_com.crt
    - STAR_clariusgroup_com.ca-bundle

```bash
vim fullchain.pem

# Contents as mentioned above
```

- Update `privkey.pem`
    - Put your private key that was used while generting CSR

```bash
vim privkey.pem

# content of your private key
```

- Restart nginx service

```bash
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```


- Verify SSLs are updated properly

```bash
curl -v  https://athena.clariusgroup.com | grep -C 10 "Server certificate"
```

It should say something like: (Verify expiry date)

```
*  subject: CN=*.clariusgroup.com
*  start date: Aug 18 00:00:00 2021 GMT
*  expire date: Aug 22 23:59:59 2022 GMT
```
