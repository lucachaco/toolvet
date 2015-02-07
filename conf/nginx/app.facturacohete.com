server {
    listen 80;
    server_name app.facturacohete.com;
    passenger_enabled on;
    passenger_app_env production;
    root /var/www/facturacohete-front-end/wwwroot/project/website/public;

}
