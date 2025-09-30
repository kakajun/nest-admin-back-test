#!/bin/sh
# 设置nginx权限和创建必要的目录
mkdir -p /var/cache/nginx/client_temp
mkdir -p /var/run
chmod -R 755 /usr/share/nginx/html

# 启动Nginx
nginx -g 'daemon off;' &

# 等待nginx启动
sleep 2

# 启动后端应用
pm2-runtime dist/main.js
