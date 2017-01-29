server {
    listen 80;
    listen [::]:80 ipv6only=on;

    root /var/www/site1.com;
    index index.html index.htm;

    # server_name site1.com www.site1.com;
    server_name site1.dev site1.com;

    location / {
        try_files $uri $uri/ =404;
    }
    
    #resolver 127.0.0.11 valid=5s;
    #set $upstream http://app;
    #location / {
    #  proxy_pass $upstream;
    #}
}
