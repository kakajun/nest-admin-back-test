#!/bin/sh

# 启动Nginx
nginx -g 'daemon off;' &

# 等待nginx启动
sleep 2

# 启动后端应用
pm2-runtime dist/main.js
