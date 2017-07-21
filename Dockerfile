FROM nginx
MAINTAINER Nicholas Luo
ENV RUN_USER nginx 
ENV RUN_GROUP nginx 
ENV DATA_DIR /data/web
ENV LOG_DIR /data/log/nginx
RUN mkdir -p /data/log/nginx
RUN chown nginx.nginx -R /data/log/nginx
ADD web /data/web
ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT nginx -g "daemon off;"




