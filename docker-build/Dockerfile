FROM nginx:stable-alpine
RUN apk add --no-cache bash
COPY ./public/ /var/www
COPY ./docker-build/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./docker-build/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
