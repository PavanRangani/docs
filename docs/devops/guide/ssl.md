# SSL Certificates

## Summary
- Staging(https://athena2.clariusgroup.com) and Production(https://athena.clariusgroup.com) uses SSL certificates from NameCheap. It does not use SSL certificates via LesEncrypt, because at one fine day, SSLs from LetsEncrypt were expired and Claris Office had to face the downtime! (That was eventually fixed, but to avoid any such situation, we don't rely on LetsEncrypt)
- Athena Nexus(https://athena-nexus.clariusgroup.com) and Athena Jenkins(https://athena-jenkins.clarisugroup.com) uses SSLs via LetsEncrypt. (They are via letsencrypt nginx and it has never had any issues) Renewal for it is automated ofcourse.

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
