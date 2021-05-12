---
title: 一键脚本安装xray/v2ray/trojan(八合一)+wordpress
date: 2021-05-12 21:22:28
tags:
---
#### 前言
原项目为A大的八合一脚本
原项目地址:https://github.com/mack-a/v2ray-agent
只是修改伪装网站为wordpress,科学上网的同时还可以有一个博客,一举两得
### **一键安装脚本**
**仅支持centos7**
```shell
# yum install wget vim -y && wget -N --no-check-certificate -q -O install.sh "https://cdn.jsdelivr.net/gh/jth445600/hello-world@master/shiyan5.sh" && chmod +x install.sh && bash install.sh

#  yum install wget vim -y && wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/jth445600/hello-world/master/shiyan5.sh" && chmod +x install.sh && bash install.sh
```

支持的八种类型
 - VLESS+TCP+TLS
 - VLESS+TCP+xtls-rprx-direct【推荐】
 - VLESS+gRPC+TLS【支持CDN、IPv6】
 - VLESS+WS+TLS【支持CDN、IPv6】
 - VMess+TCP+TLS
 - VMess+WS+TLS【支持CDN、IPv6】
 - Trojan【推荐】
 - Trojan-Go+WS【支持CDN、不支持IPv6】