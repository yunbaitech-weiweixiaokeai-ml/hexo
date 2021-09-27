---
title: 搭建临时邮箱
date: 2021-09-27 03:01:43
tags:
---
最近服务器闲置地有点多，为了不吃灰，拿来搭建一个temp邮箱！

![20210927144022](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210927144022.png)

项目地址 https://github.com/denghongcai/forsaken-mail 

项目作者写的步骤有点不怎么清楚，这里将自己的摸索过程记录如下
## 准备工作
1/ vps一台
2/ 一个域名

cloudflare 官网

www.cloudflare.com


## 1.安装

### 安装Docker

```shell
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh

```
### 关闭sendmail

```shell
sudo netstat -pna | grep 25

/etc/init.d/sendmail stop
```

### 拉取镜像
```shell
docker run --name forsaken-mail -d -p 25:25 -p 3000:3000 denghongcai/forsaken-mail
```
### 打开端口

```shell
iptables -A INPUT -p tcp -m tcp --dport 3000 -j ACCEPT
service iptables save

```

安装成功，应该就可访问网站了： http://IP:3000/

## 2. 设置DNS记录
只需要添加两个记录即可

添加MX记录

类型：MX

名称：445600.gq

邮件服务器：mx.445600.gq

TTL：自动

优先级：10


![20210927145317](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210927145317.png)

添加A记录

类型：A

名称：mx

IPv4 地址：vps ip

TTL：自动

![20210927145349](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210927145349.png)

## 3. 设置Nginx反代
```
vim /etc/nginx/conf.d/alone.conf 
```
```
        server {
         listen 80;
        server_name mx.445600.gq;
        location / {
                root /usr/local/ServerStatus/web;
                index index.html;
                                proxy_pass http://127.0.0.1:3000/;
                }
        }

```

重启nginx

```
systemctl restart ngxin

```

## 4. 一些docker命令

由于程序是docker封装的，以下对日后维护很有帮助的docker命令简记如下
1. 查看所有容器
```
docker ps -a
CONTAINER ID   IMAGE                       COMMAND                  CREATED          STATUS                        PORTS     NAMES
13f0c6688370   denghongcai/forsaken-mail   "/bin/sh -c 'npm sta…"   44 minutes ago   Exited (137) 32 minutes ago             forsaken-mail
```
可以看到容器`forsaken-mail`的容器`ID（CONTAINER ID）`是`13f0c6688370`
2. 启动已停止的容器
```
docker start 容器ID
```
3. 关闭正在运行的容器
```
docker start 容器ID
```
4. 重启容器
```
docker start 容器ID
```
5. 进入容器
```
docker exec -it 容器ID /bin/bash
```
搭建挺简单的，只是碰到的小问题挺多。如果有碰到别的疑难杂症，欢迎留言！