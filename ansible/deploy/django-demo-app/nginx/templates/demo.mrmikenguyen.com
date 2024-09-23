server {
    listen 80;
    server_name demo.mrmikenguyen.com;

    location /static/ {
        alias /opt/demo/static/;
    }

    location / {
        proxy_pass http://localhost:{{gunicorn_port}};
    }
}