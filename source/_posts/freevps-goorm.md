---
title: freevps01-使用免费容器Goormide搭建Socks5科学上网
date: 2021-05-12 12:32:46
tags:
---
### 一、注册 
   
  goormide注册简单，只需要一个邮箱就可以注册,推荐使用域名邮箱. 
  官方网站：https://ide.goorm.io/
>注意:有可能会出现封号的情况,目前发现安装`aria2`下载工具会导致封号

### 二、项目地址

项目地址：https://github.com/guleonseon/goorm-auto

### 几点提示：
- 1、安装完程序后，断线或外部vm重置后无需重新安装，只要登录`goorm`后，服务程序会自动执行
- 2、本脚本只保证支持当前版本的`goorm`，其他shell可自行研究、修改

### 三、安装

### 1、登录`goorm`
[goorm shell](https://ide-run.goorm.io/)

### 2、执行以下代码
`bash <(curl -s -L https://raw.githubusercontent.com/guleonseon/goorm-auto/master/install.sh)`

### 3、开放内部端口
[![port.png](https://z.photos/images/2021/05/12/port.png)](https://z.photos/image/ejaY)

### 4、愉快的科学上网
在系统代理或者chrome的[SwithyOmega](https://chrome.google.com/webstore/detail/proxy-switchyomega/padekgcemlokbadohgkifijomclgjgif)配置你的代理服务器和端口，注意选择`socks5`
![image.png](https://i.loli.net/2021/05/12/LzvBVapyYrdJQ2w.png)