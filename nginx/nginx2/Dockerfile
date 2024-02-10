FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d
COPY proxy.conf /etc/nginx
COPY fastcgi.conf /etc/nginx
COPY mime.types /etc/nginx
