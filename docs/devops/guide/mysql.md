# MySQL RDS

We are using AWS RDS for MySQL datastore. So all maintenance work are done through AWS Console.

## Apply OS version update patch

We have configured RDS to auto apply minor version upgrade patches automatically during maintenance window of 08:17AM to 08:47AM UTC time.

But upgrades like OS upgrade patch etc requires manual intervention OR they get applied after certain grace period automatically. It is good to manually apply these patches as it would also cause brief period of downtime of ~10minutes.

### Steps
- On staging and Production, 

```bash
bash under-maintenance.sh true
docker-compose stop athena-server
docker-compose stop oauth2-server oauth2-users oauth2-clients
```

- On AWS RDS Console, Apply maintenance
- Once MySQL is `Available`, start the services.

- On Staging and Production,

```bash
docker-compose start oauth2-server oauth2-users oauth2-clients
docker-compose start athena-server
docker-compose restart nginx
bash under-maintenance.sh false
```

> Let all services start properly and then only move to next steps. Observe logs!

## Update RDS Certificate Authorities

Steps are same as above `Apply OS version patch`, but instead of applying patch, we would update the configuration to use the latest available Certificate authotities

- on AWS RDS Console, Open the RDS instance
- Click on `Modify` button
- Under `Certificate Authorities`, select the latest certificates
- Once MySQL is `Available`, start the services as above.