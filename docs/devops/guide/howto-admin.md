# How to Admin

## allow new ip address to access admin interface

- we allow only specific ip address to access admin interface
- we have configuren ip address in our `allowed-ips.confblock` file so we need to update that file for new ip address
- add new ip address to access admin interface

```bash
vim $ATHENA_HOME/config-local/nginx/allowed-ips.confblock
#e.g. new ip is 12.56.45.56
allow 12.56.45.56;
```

- restart nginx

```bash
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```

## remove ip address access from admin interface

- remove ip from `allowed-ips.confblock` file

```bash
vim $ATHENA_HOME/config-local/nginx/allowed-ips.confblock
#e.g. ip is 12.56.45.56 delete that line
```

- restart nginx

```bash
cd $ATHENA_HOME/deployment
docker-compose restart nginx
```
