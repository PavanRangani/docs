# Start an environment from scratch

## Summary

```
cd $ATHENA_HOME/deployment

docker-compose up -d elasticsearch
docker-compose up -d athena-docs
docker-compose up -d oauth2-server oauth2-users oauth2-clients
docker-compose up -d athena-server
docker-compose up -d athena-webapp

docker-compose start nginx
```

Verify all services have started. All services should be in `Up` state

```bash
docker-compose ps
```
