From nginx:alpine

RUN mkdir -p /var/www/site1.com
COPY index.html /var/www/site1.com

RUN rm -rf /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY site1.com /etc/nginx/sites-enabled/site1.com

EXPOSE 80
