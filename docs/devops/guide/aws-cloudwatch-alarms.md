# Create Cloudwatch Alarms for AWS resources

## Summary

- Monitoring of EC2/RDS resources usage automatically and when such abnormal condition is detected, it would alert us.
    - E.g. For RDS, ideally it should not be using a higher CPU consistently as we have very nominal load there. So we define the threshold like `CPU usage >45%` and it should alarm us when it goes above that.

## Create Cloudwatch Alarm

- Open [AWS console](https://console.aws.amazon.com/console/home?region=us-west-2) > CloudWatch > Select `Alarms`
- Select `Create Alarms`
- Select `Metrics`
- Now you need to select the Metric you want to configure alarm for
    - Search `CPU` (or any other you want to configure)
    - Select `EC2-per-instance-metrics` (CPU metrics amazon provide by default so here i can use default metrics by aws) (you need to select custom metrics for memory and disk e.g. `CWagent Metrics`)
    - Find 
        - Instance name: `athena-staging`
        - Metric name: `CPUUtilization`
- Period: `5 min`
- Conditions
    - Threshold type: `Static`
- Whenever CPUUtilization is… (that means 45% or 45%above)
    - `Greater/Equal`
- Define the threshold value.
    - `10`
- Data point to alarm
    -  `3 of out 3` (Note: We don't want false alarms when it spikes for momentary)
- Alarm state trigger
    - `IN alarm`
- Select sns topic
    - `Admins`
- Next Page
- Alarm Name
    - `ATHENA_STAGING_CPU_USAGE_ALARM`
- Review and validate your alarm information
