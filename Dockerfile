FROM nginx:alpine
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./index.html .
EXPOSE 8080
ENTRYPOINT [ "nginx", "-g", "deamon off;" ]