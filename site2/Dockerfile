FROM nginx:alpine

RUN mkdir -p /var/www/site2.com
COPY index.html /var/www/site2.com

RUN rm -rf /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY site2.com /etc/nginx/sites-enabled/site2.com

EXPOSE 80
