# Cloudwatch monitoring with additional metrics on AWS

## Summary

- By default, AWS monitoring via CloudWatch collects very few metrics, which might not be helpful to measure detailed Instance health like Disk space available, Memory available etc.
- To collect those metrics, we must do it on our own. Luckily, Cloudwatch has a Cloudwatch agent, which can push those additional metrics to Cloudwatch service and then we can monitor them or create alarms as well. 
- Alarms could be like Disk utilization is > N threshold or free RAM is < N threshold etc. 
- We could collect any number of metrics using Cloudwatch agent.

## Create IAM role (if role doesn't exist)

- Open IAM services
- Create role
- Select `Allows EC2 instances to call AWS services on your behalf`
- Now attach permission to the Role
- Select policy: `CloudWatchAgentServerPolicy`
- Role name: `CloudWatchAgentServerRole`
- Save

## Attach Role to EC2 Instance

As our servers are on EC2 itself, we can attach any IAM role to EC2 instance itself as well.

- Open EC2 services
- Select ec2 instance
    - Action > instance setting > attach/replace role
    - Select role (that we created above): `CloudWatchAgentServerRole`
- Apply

## Install CloudWatch agent on ec2 instance

```bash
cd /home/ubuntu
mkdir cloudwatch
cd cloudwatch
wget https://s3.amazonaws.com/amazoncloudwatch-agent/ubuntu/amd64/latest/amazon-cloudwatch-agent.deb
sudo dpkg -i amazon-cloudwatch-agent.deb
```

## Create CloudWatch Agent configuration file

- We want to measure disk and memory-used metrics only for now, it consists only of those metrics.

```bash
sudo vim  /opt/aws/amazon-cloudwatch-agent/bin/config.json
```

::: details config.json

```json
{
        "agent": {
                "metrics_collection_interval": 60,
                "run_as_user": "cwagent"
        },
        "metrics": {
                "metrics_collected": {
                        "mem": {
                                "measurement": [
                                        "mem_used_percent"
                                ]
                        },
                        "disk": {
                                "measurement": [
                                        "used_percent"
                                ],
                                "resources": [
                                        "*"
                                ]
                        }
                },
                "append_dimensions": {
                        "ImageId": "${aws:ImageId}",
                        "InstanceId": "${aws:InstanceId}",
                        "InstanceType": "${aws:InstanceType}",
                        "AutoScalingGroupName": "${aws:AutoScalingGroupName}"
                }
        }
}
```

- Restart Cloudwatch agent service to apply this configuration

```bash
sudo amazon-cloudwatch-agent-ctl -a stop
sudo amazon-cloudwatch-agent-ctl -a start
```

- Verify Cloudwatch agent logs

```bash
tail -f /var/log/amazon/amazon-cloudwatch-agent/amazon-cloudwatch-agent.log 
```

## Verify metrics on Cloudwatch on AWS UI.

> It may take upto 5 to 10 mins to visually see new Metrics on Cloudwatch dashboard.

## Add a new metric to already setup Cloudwatch agent

- Just update the configuration file, restart the service and it will start collecting/pushing that metric to CloudWatch.
- see [list of Metrics that Cloudwatch can collect.](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/metrics-collected-by-CloudWatch-agent.html)

## References
- [Install cloudwatch agent](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/download-cloudwatch-agent-commandline.html)
- [Configure cloudwatch agent](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/create-cloudwatch-agent-configuration-file-wizard.html)
