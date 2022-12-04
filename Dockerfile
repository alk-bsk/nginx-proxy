FROM nginx:stable-alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 443
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]