---
title: 玩转谷歌网盘6-使用emby+Google Drive搭建个人影院
date: 2021-05-25 02:01:43
tags:
---

### 一、安装emby

下载地址: https://github.com/MediaBrowser/Emby.Releases/releases/

**ubuntu/debian系统**
```shell
wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.6.0.52/emby-server-netgear_4.6.0.52_amd64.deb

dpkg -i emby-server-netgear_4.6.0.52_amd64.deb
```
**测试**
在浏览器打开 `IP:8096`

如果你还是打不开那可能是因为端口未开放的缘故 Ubuntu系统下打开端口

`iptables -F`

**centos系统**
```shell
wget  https://github.com/MediaBrowser/Emby.Releases/releases/download/4.6.0.52/emby-server-rpm_4.6.0.52_x86_64.rpm

rpm -ivh emby-server-rpm_4.6.0.52_x86_64.rpm
```
**测试**
在浏览器打开 `IP:8096`

同样打不开的,需要开放这个端口

```
sudo iptables -P INPUT ACCEPT
sudo iptables -P FORWARD ACCEPT
sudo iptables -P OUTPUT ACCEPT
sudo iptables -F
```

### 安装配置rclone

1、安装rclone
```
curl https://rclone.org/install.sh | sudo bash
```
2、配置

`rclone config`

**具体操作见视频**
往期视频中也有介绍: https://youtu.be/bIWcDrar8iY

3.挂载

```shell?linenums
sudo mkdir -p /root/005

/usr/bin/rclone mount 005: /root/005 \
 --umask 0000 \
 --default-permissions \
 --allow-non-empty \
 --allow-other \
 --buffer-size 32M \
 --dir-cache-time 12h \
 --vfs-read-chunk-size 64M \
 --vfs-read-chunk-size-limit 1G &
 ```
 4、查看挂载
    `df -h`
 














