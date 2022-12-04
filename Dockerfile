FROM nginx:stable-alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./index.html .
EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]