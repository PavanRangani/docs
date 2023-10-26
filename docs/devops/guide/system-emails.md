# System Emails (that athena-server sends)

System emails = Emails that are sent by the system on events, like activation request on new user signup


## Summary
- Same credentials are used for Staging and Production
- `athena-server` uses Java library, which reads its SMTP configuration from `$ATHENA_HOME/config-local/athena-server/mail.properties` file

Sample `mail.properties`:

```
# Email sender properties
mail.transport.protocol=smtp
mail.smtp.host=smtp.office365.com
mail.smtp.auth=true
mail.smtp.port=587
mail.smtp.from=athena2@clariusgroup.com
mail.smtp.starttls.enable=true
mail.username=athena2@clariusgroup.com
mail.password=MY_STRONG_PASSWORD
```

## Change credentails
- Update the `$ATHENA_HOME/config-local/athena-server/mail.properties` on respective environment
- Restart `athena-server` service

```
bash under-maintenance.sh true
docker-compose restart athena-server

# Let the service start completely. (Watch logs)

bash under-maintenance.sh false
```