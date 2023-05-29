---
title: linux配置mutt命令行邮件客户端
date: 2023-5-15
updated:
tags: mutt
categories: linux
keywords: mutt
description:
top_img:  https://upload.wikimedia.org/wikipedia/commons/a/a1/Mutt.png
comments:
cover: https://upload.wikimedia.org/wikipedia/commons/a/a1/Mutt.png
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

有问题请加电报群: https://t.me/yunbaitech_chat
![enter description here](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684292410640.png)

配置命令行邮件客户端有很多作用, 最常见的就是邮件报警, 第一时间将linux设备的情况通过邮件发送出去. 
本文中我使用的是qq邮箱, 当然139 163 126都可以的.
### 一 安装
这里演示用的是 ubuntu/debian 系统
```
sudo apt-get install mutt msmtp
```
### 二 配置 msmtp和mutt

1. 配置`mutt`

输入命令`vim ~/.muttrc`
```bash
set sendmail="/usr/bin/msmtp"
set use_from=yes
set realname="laptop" #发送邮件前显示的名字
set from=xxxxx@qq.com #邮箱账户
set envelope_from=yes
```
这里我使用的是qq邮箱, 139邮箱 和163/126邮箱都是可以的, 需要开启smtp服务, 139邮箱开启是免费的, 但是163和qq需要花0.1元短信钱

2. 配置 `msmtp`

输入命令 `vim ~/.msmtprc`
```bash
account default
host smtp.qq.com # 所选邮箱的smtp 地址 
tls on
tls_starttls off 
tls_certcheck off
from xxxxxxx@qq.com
auth plain
user xxxxxxx@qq.com
password xxxxxx # 申请开启smtp后给的密钥
logfile /var/log/msmtp.log
```
编辑完成之后, 改一下权限 `sudo chmod 600 ~/.msmtprc`
还需要创建一个保存日志的文件
`touch /var/log/msmtp.log`
163邮箱smtp地址:   smtp.163.com
126邮箱smtp地址:   smtp.126.com
139邮箱smtp地址:   smtp.139.com
3.  发送测试

`echo "正文内容" | mutt -s "主题内容" 收件人地址@xx.com`
如果能收到信,就代表测试成功了.
 
