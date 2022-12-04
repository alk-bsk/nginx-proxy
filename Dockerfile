FROM nginx:alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.config
EXPOSE 80
ENTRYPOINT [ "nginx", "-g", "deamon off;" ]