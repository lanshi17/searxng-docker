#!/bin/bash

# 设置你的 docker-compose.yml 文件所在目录
COMPOSE_DIR="/opt/searxng-docker"
cd $COMPOSE_DIR

# 拉取最新镜像
sudo docker-compose pull

# 停止并删除旧容器，然后启动新容器
sudo docker-compose down
sudo docker-compose up -d

sudo docker compose logs -f |grep 'ERROR'
