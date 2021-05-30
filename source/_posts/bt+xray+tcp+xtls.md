---
title: 使用宝塔面板安装 xray+tcp+xtls
date: 2021-05-30 02:01:43
tags:
---

### 准备工具

1、VPS 一台，重置好主流的操作系统
推荐用centos7系统
2、域名一个，解析到该VPS。

#### 以下操作使用centos7演示

**一、更新系统**
CentOS
```
yum install epel-release -y
yum update -y
yum install wget curl -y
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
```
sed -i "s|bind_user == 'True'|bind_user == 'XXXX'|" /www/server/panel/BTPanel/static/js/index.js
```




三、安装xray

```
bash -c "$(curl -L https://github.com/XTLS/Xray-install/raw/main/install-release.sh)" @ install -u root

```
### 生成UUID有两种方法

1.直接在shell输入命令
```
cat /proc/sys/kernel/random/uuid 
```
2. 使用该网站生成  https://1024tools.com/uuid


![20210530202405](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210530202405.png)


安装完毕以后，在VPS目录 /usr/local/etc/xray 找到 config,json 文件，贴入下面的配置文件
（以下配置中，两处修改 其中域名处，必须修改）

```
{
    "log": {
        "loglevel": "warning"
    }, 
    "inbounds": [
        {
            "listen": "0.0.0.0", 
            "port": 443, 
            "protocol": "vless", 
            "settings": {
                "clients": [
                    {
                        "id": "baf36097-d1ff-4b9a-bef0-fc6b3a5cbb29", //此处改为你的UUID
                        "level": 0, 
                        "email": "a@b.com",
                        "flow":"xtls-rprx-direct"
                    }
                ], 
                "decryption": "none", 
                "fallbacks": [
                    {
                        "dest": 37212
                    }, 
                    {
                        "alpn": "h2", 
                        "dest": 37213
                    }
                ]
            }, 
            "streamSettings": {
                "network": "tcp", 
                "security": "xtls", 
                "xtlsSettings": {
                    "serverName": "red.445600.ga", //修改为你的域名
                    "alpn": [
                        "h2", 
                        "http/1.1"
                    ], 
                    "certificates": [
                        {
                            "certificateFile": "/usr/local/etc/xray/cert/fullchain.cer", 
                            "keyFile": "/usr/local/etc/xray/cert/private.key"
                        }
                    ]
                }
            }
        }
    ], 
    "outbounds": [
        {
            "protocol": "freedom", 
            "settings": { }
        }
    ]
}
```

三 修改网站配置文件

修改Nginx配置文件

```
server { 
    listen       0.0.0.0:80;
    server_name  red.445600.ga;
    root /usr/share/nginx/html/;
    index index.php index.html;
    #rewrite ^(.*)$  https://\$host\$1 permanent; 
}
 server {
    listen       127.0.0.1:37212;
    server_name  red.445600.ga;
    root /usr/share/nginx/html;
    index index.php index.html index.htm;
}
 server {
    listen       127.0.0.1:37213 http2;
    server_name  red.445600.ga;
    root /usr/share/nginx/html;
    index index.php index.html index.htm;
}
    

```



























