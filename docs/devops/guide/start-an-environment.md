# Start an environment from scratch

## Summary

> We have created a helper script to start the environment.

```
cd $ATHENA_HOME/deployment

bash ./script/start.sh
```

Verify all services have started. All services should be in `Up` state

```bash
docker-compose ps
```
