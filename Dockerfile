FROM nginx:stable-alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./index.html .
EXPOSE 3000

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]