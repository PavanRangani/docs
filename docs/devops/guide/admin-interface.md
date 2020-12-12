# Admin Interface

- We have built custom Admin interface, which has features to perform actions like Backup/Restore, Restart environment or Download source code.
- We have restricted access to Admin interface to whitelisted IPs only. It is done via `nginx` service.
- It is also secured via [Authelia](https://github.com/authelia/authelia) open source service. It is self-hosted on each environment.
- Authentication is performed by Authelia which includes 2FA via Google Authenticator.
- Authelia's users are configured into environment's local configuration file. e.g `config-local/authelia/users_database.yml` file.
    - It has user's details like, username, email and password(hashed).
- Sign ups to Authelia are not allowed.

See this [Authelia setup reference](./authelia.md)

-------------

## Authelia portal URLs

- [Staging](https://authelia-athena2.clariusgroup.com)
- [Production](https://authelia.clariusgroup.com)

------------

## Add a new user for Admin Interface
### Summary
- Users are maintained by Authelia, so we will update its configuration.
- Generate password hash, to be used in `users_database.yml`.
- Restart `authelia` service to apply the changes.

------------

- Generate password hash, (change `MY_PASSWORD` with real one)
```bash
docker run authelia/authelia authelia hash-password MY_PASSWORD -m 256
```

- Update `users_database.yml` to have a new user

```bash
vim $ATHENA_HOME/config-local/authelia/users_database.yml
```

- Add following under `users` by updating placeholder values in following block:

```yml
users:
  myawesomeusername:
    password: PASSWORD_HASH_FROM_ABOVE_COMMAND
    displayname: My Awesome Name
    email: me@awesome.com
    groups:
    - admins
```

Here, user name is `myawesomeusername`, its display name is `My Awesome Name` and email is `me@awesome.com`.

- Restart `authelia`

```bash
cd $ATHENA_HOME/deployment
docker-compose restart authelia
```

### Remove existing user for Admin interface

Just like above add, we simply remove the user's configuration block from `users_database.yml` file and restart `authelia` service to apply the configuration.

```bash
vim $ATHENA_HOME/config-local/authelia/users_database.yml

cd $ATHENA_HOME/deployment
docker-compose restart authelia
```
-----------------------

## Reset password

- As we are using Authelia, it can be done by user itself using Authelia's Reset password link.
- OR, we could update `users_database.yml` to have a newer password hash.

------------------------

## Reset Google Authenticator key
- This can be done by user itself only from Authelia portal.
- Just request a new OTP registration from Authelia interface itself. System will send an email containing steps to register new Google Authenticator key.

------------------------

## Add new IP Address to whitelist for Admin Interface

- We have configured `nginx` service to allow access to Admin interface **ONLY** to whitelisted IPs.
- They are configured on each server's local configuration. e.g `config-local/nginx/allowed-ips.confblock` file.

```bash
vim $ATHENA_HOME/config-local/nginx/allowed-ips.confblock
#e.g. new ip is 12.56.45.56
allow 12.56.45.56;
```

- restart `nginx`

```bash
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```

- Whitelist IP Address on AWS security group:
    - As the actions it performs, are directly invoked via Jenkins Job's trigger URLs, the IP should also be added to `production` and `jenkins` security groups on AWS.

Now the newly added IP can access Admin Interface.

--------------------------

## Remove existing IP address from whitelist for Admin Interface
Just like above add new IP guide, we will simply remove the IP address and restart the `nginx` service.

```bash
vim $ATHENA_HOME/config-local/nginx/allowed-ips.confblock
#e.g. Remove the IP Address 
```

- restart `nginx`

```bash
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```

Now the removed IP address cannot access Admin interface.
