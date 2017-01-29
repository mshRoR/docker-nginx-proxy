server {
    listen 80;
    listen [::]:80 ipv6only=on;

    root /var/www/site2.com;
    index index.html index.htm;

    #server_name site2.com www.site2.com;
    server_name site2.dev site2.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
