---
title: 使用宝塔搭建临时邮箱
date: 2021-09-27 02:01:43
tags:
---

### 准备工具

1、VPS 一台，重置好主流的操作系统
推荐用centos7系统
2/ 域名一个

#### 以下操作使用centos7演示

**一、更新系统**
CentOS
```
yum install epel-release -y
yum update -y
yum install wget curl -y
```

debian/ubuntu系统

```
apt update 
apt install wget curl -y
```

二、安装宝塔面板
宝塔面板主页：https://www.bt.cn/
Centos安装命令：
```
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
```
复制代码

试验性Centos/Ubuntu/Debian安装命令 独立运行环境（py3.7） 可能存在少量兼容性问题 不断优化中  
```
curl -sSO http://download.bt.cn/install/install_panel.sh && bash install_panel.sh
```
复制代码

Ubuntu/Deepin安装命令：
```
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh
```
复制代码
Debian安装命令：
```
wget -O install.sh http://download.bt.cn/install/install-ubuntu_6.0.sh && bash install.sh
```
复制代码

安装完毕之后，不要着急打开

输入以下命令：
```shell
sed -i "s|if (bind_user == 'True') {|if (bind_user == 'REMOVED') {|g" /www/server/panel/BTPanel/static/js/index.js
 
rm -rf /www/server/panel/data/bind.pl
```

搭建完之后，安装nginx环境








































