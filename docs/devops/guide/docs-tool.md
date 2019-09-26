# VuePress Docs tool

Accessible via [/docs](https://athena.clariusgroup.com/docs) context.

## How its done?
- Microservice's name is `athena-docs`
- It is deployed on production environment `athena.clariusgroup.com/docs`
- Documentation resides in [docs Github repository](https://github.com/clarius-athena/docs)
- We use only `master` branch of it
- Whenever there is a update in master branch, it triggers webhook to `jenkins.dream-world.in` to build `athena-prod-docs` job.
- athena-docs build is deployed as Docker container,
  - It is using Amazon AWS ECR docker registry.
- Its access is restricted by Nginx Basic authentication via hard-coded credentials in [deployment](https://github.com/clarius-athena/deployment/blob/master/config/nginx/.htpasswd) repository.


## How to change Authentication credentails

Credentials reside in deployment Github repo.

- Generate credentials via [htpasswd](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/) utility
  - It will create `.htpasswd` file in your local. Copy its content
- Update `config/nginx/.htpasswd` to include newly generate password
- Save file and commit to Git repository
- Pick this change on env-prod branch
- Recreate nginx container on production machine

```bash
git pull origin env-prod
docker-compose up -d nginx
```


