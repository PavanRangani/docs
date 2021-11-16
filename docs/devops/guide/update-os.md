# Update OS on any environment

[[toc]]

## Stop services
```bash
cd $ATHENA_HOME/deployment
bash under-maintenance.sh true
docker-compose stop athena-server
docker-compose stop
```

## Create AMI on AWS EC2 console

- Go to AWS Console and create AMI of the EC2 instance you are upgrading
- Let the image be completed before proceeding for next steps

## Update OS
```bash
sudo apt update
sudo apt upgrade
sudo reboot
```

## Start services
```bash
cd $ATHENA_HOME/deployment
bash script/start.sh -s start
```

## Verify
- Open the respective enviornment's webapp URL. e.g [Athena Staging](https://athena2.clariusgroup.com)
- It should work OK.