---
title: 搭建临时邮箱
date: 2021-09-27 03:01:43
tags:
---
最近服务器闲置地有点多，为了不吃灰，拿来搭建一个temp邮箱！

![20210927144022](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210927144022.png)

项目地址 https://github.com/denghongcai/forsaken-mail 

项目作者写的步骤有点不怎么清楚，这里将自己的摸索过程记录如下

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