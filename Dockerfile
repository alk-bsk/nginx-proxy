FROM nginx:stable-alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY contents .

EXPOSE 5000
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]