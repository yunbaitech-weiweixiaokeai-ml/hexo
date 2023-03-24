---
title: 给甲骨文ARM安装Gnome桌面
date: 2023-2-4
updated:
tags: GNOME
categories: oracle_cloud
keywords:
description:
top_img: https://s1.ax1x.com/2023/02/04/pSyftje.png
comments:
cover: https://s1.ax1x.com/2023/02/04/pSyftje.png
toc:
toc_number:
toc_style_simple:
copyright:
copyright_author:
copyright_author_href:
copyright_url:
copyright_info:
mathjax:
katex:
aplayer:
highlight_shrink:
aside:
---

本文主要介绍在甲骨文ARMj机器上安装GNOME桌面环境, 这里边有很多坑,我会在遇到坑的地方做出强调.

安装环境

1、甲骨文ARM，2核12G内存；  
2、系统请使用ubuntu最新；  

#### 一 前期准备工作

##### 1. 修改root登录方式

新开出的甲骨文arm机器是密钥登录,配置`xrdp`远程桌面需要用root登录的话,需要修改成密码登录.注意这一步是可选的.因为你可以使用新建一个用户,专门用来登录`xrdp`远程桌面用.





```shell
apt update -y && apt upgrade -y
```

安装桌面

```shell
apt install ubuntu-desktop
```

> 安装桌面这个过程比较慢，2核12G耗时6分钟

安装xrdp

```shell
apt install xrdp -y
```

添加用户、重启Xrdp、开机启动

```null
adduser xrdp ssl-cert
systemctl restart xrdp
systemctl status xrdp
```

，Windows使用远程桌面。但是请注意，推荐使用16位色，否则不够流畅。

新建连接 IP:3389，用户名和密码是vps的登陆密码如：root，_*_*

首次连接需要简单设置，默认即可。