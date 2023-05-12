# Authelia

> It is used for authentication of Admin Interface.

- We are using Authelia, which provides **The Single Sign-On Multi-Factor portal for web apps**
- It is self-hosted on each of our deployment environments as a micro-service. Defined in [docker-compose.yml](https://github.com/clarius-athena/deployment/blob/master/docker-compose.yml#L163)
- All its own configurations are locally stored in `$ATHENA_HOME/config-loca/authelia`.
- Its configuration are at `config-local/authelia/configuration.yml`
- Users are configured via `config-local/authelia/users_database.yml`
- We can configure any `nginx` endpoint to have authentication via Authelia. Like its configured for `/admin` at the moment. We can add `/another-endpoint` to be secured via Authelia. See [this nginx configuration sample](https://github.com/clarius-athena/deployment/blob/master/config/nginx/conf.d/aristata.conf.template#L46)
- We can configure it to force either one factor or two factor authentication. Like `test` environment is forcing only one factor, while `Staging` and `Production` environment are enforcing 2FA by default for all users. See [this example](https://www.authelia.com/docs/configuration/access-control.html#complete-example)
- Emails are sent out using SMTP. Configuration is defined in `configuration.yml`

## References
- [Authelia docs](https://www.authelia.com/docs/)
- [Github: Deployment project commit](https://github.com/clarius-athena/deployment/commit/c8b301139d9c985b8b5fe3b1a0cb75fb6c2a79b8)
- [Kerika Card:  Admin interface: Use Google Authenticator as two-factor authentication ](https://a.kerika.com/C7_/board/BFG6C/BTcNX?tab=tasks)

---------------

## How to secure any other endpoint with Authelia

In `deployment` project's `nginx` configuration's location block, just include authelia auth config. See [this reference](https://github.com/clarius-athena/deployment/blob/master/config/nginx/conf.d/aristata.conf.template#L49-L50)

```bash
    include /etc/nginx/conf.d/authelia-auth.confblock;
    include /etc/nginx/conf.d/authelia-proxy.confblock;
```

And than restart `nginx` service.


## Update Authelia

We are running Authelia as [docker container in Deployment project](https://github.com/clarius-athena/deployment/blob/master/docker-compose.yml#L179), where its version is controlled by environment variable `ATHENA_AUTHELIA_VERSION`.

So to update it, we just check [Authelia release notes](https://github.com/authelia/authelia/releases) for any breaking changes and update the environment variable accordingly.

## Steps
- Check [Authelia release notes](https://github.com/authelia/authelia/releases) and look for any breaking changes that might affect us.
- SSH to respective environment
- Update `$ATHENA_HOME/config-local/config.sh` for `ATHENA_AUTHELIA_VERSION`
- Run following command to upgrade it:

```bash
cd $ATHENA_HOME/deployment
source $ATHENA_HOME/config-local/config.sh
docker-compose up -d authelia
```

- Verify by accessing the [Admin interface](https://athena2.clariusgroup.com/admin)

> Repeat this process for all environments in following order: test, staging and production.

## Troubleshooting

### docker container crashes with out of memory

There is a configuration for password hashing in Authelia, its default memory limit is 1024MB. If there isn't sufficient memory available, container would crash.

It would crash at time of login or more frequently when login via wrong password.

To fix it, we can limit the memory in `configuration.yml` file.

See [this Github issue for reference](https://github.com/authelia/authelia/issues/866).