---
title: 私人邮局搭建教程，VPS服务器上用自己的域名搭建邮箱，安全收发邮件
date: 2021-09-28 21:22:28
tags:
---

## 前言
>About
Full-featured, open source mail server solution for mainstream Linux/BSD distributions.

项目地址：https://github.com/iredmail/iRedMail

## 开始安装
本文演示使用ubuntu20系统，debian系统应该差不多,centos系统不清楚情况如何。
### 需要的工具

1/ 一台vps (纯净系统) 推荐使用 ubuntu20系统

2/ 一个域名

3/ cloudflare官网  www.cloudflare.com

### 配置DNS
1/ 添加一个 A 记录

名称 mx

地址 vps 的ip

关闭代理状态
![20210928140252](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928140252.png)
2/ 添加 MX 记录

名称 你的域名

地址 mx.你的域名 

优先级 10

![20210928140349](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928140349.png)

打开终端，修改一下 FQDN
修改`hostname` 
```shell
vim /etc/hostname
```
![20210928135752](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928135752.png)

键盘,按两次 `dd`,就可以删掉原来的
然后输入 `i` 进入编辑模式,输入 `mx`

然后 `esc`键 输入 (英文状态下) `:wq` 回车就可以了

使用同样的操作修改一下`host`文件
```shell
vim /etc/hosts
```
![20210928140619](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928140619.png)
这是原来的,修改如下
```
127.0.0.1   mx.example.com mx localhost localhost.localdomain
```
![20210928140738](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928140738.png)

然后保存退出

注意:
修改成自己的域名/  一定在第一行

检查一下,如果没有生效，请重启系统。
```shell
hostname -f
```
![20210928141134](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928141134.png)

### 获取

```shell
git clone https://github.com/iredmail/iRedMail.git
```
![20210928132220](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928132220.png)

![20210928132249](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928132249.png)

可以看到下载下来的目录,进入到该目录

```shell
cd iRedMail/
```
![20210928132352](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210928132352.png)

安装
```shell
bash iRedMail.sh 
```