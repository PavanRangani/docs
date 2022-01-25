# Error emails


## Add/remove someone to error emails

- config.sh: add/remove the email to it, comma separated

```bash
vim $ATHENA_HOME/config-local/config.sh

ATHENA_ERROR_TO_EMAIL=pavanr@codetailor.in
```

- Start under maintenance and re-create athena-server

```bash
source $ATHENA_HOME/config-local/config.sh
bash under-maintenance.sh true
docker-compose up -d athena-server

# Let it start completely
bash under-maintenance.sh false
```
