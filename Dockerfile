FROM nginx:stable

LABEL maintainer="yuriy@gorvitovskiy.com"

COPY docker/start.sh /
RUN chmod +x /start.sh 

COPY web/* /usr/share/nginx/html/

CMD ["/start.sh"]