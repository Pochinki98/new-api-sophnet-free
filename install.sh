#!/bin/bash

# 1. 安装 aptitude
sudo apt install -y aptitude

# 2. 使用 aptitude 安装 docker.io
sudo aptitude install -y docker.io

# 3. 运行 Docker 容器
sudo docker run --name new-api -d --restart always -p 3000:3000 -e TZ=Asia/Shanghai -v /home/ubuntu/data/new-api:/data noobie3/sophnet-free-new-api:v1.0
