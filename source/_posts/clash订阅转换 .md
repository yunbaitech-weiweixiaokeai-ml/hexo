---
title: 自建clash在线订阅转换
date: 2021-11-20 02:01:43
tags:
---
联系方式:  电报群 https://t.me/yunbaitech_chat

## 前言

​		clash这个科学上网的客户端很强大也很麻烦,和我们平常使用的V2rayN、winxray、ssr不一样，其不能直接添加单个节点,添加节点只能通过配置文件添加,而且这个配置文件的格式会随着clash版本更新变化.
​		所以为了方便使用,很多网站提供了在线订阅地址转换的服务.但是很多这样的在线订阅地址转换存在节点信息泄露的问题.

​		对于这样一个问题,我们可以通过自建订阅转换的方法来解决.这里有两种思路一个是在本地建一个订阅转换的服务,自己在本地使用.
另外一个是搭建一个类似的在线网站,自己拥有全部权限.

​		本文介绍第二种方法--搭建一个在线订阅地址转换网站.

## 准备工作

1 / 两个邮箱，用来注册heroku，推荐使用临时邮箱

我自己搭建的临时邮箱地址： http://mail.445600.gq/

> 啥时候提示临时邮箱不能用了,到电报群里找我修改域名前缀.


> 或者你可以自己搭建一个,详见视频 https://youtu.be/WAJ-jAXvdzU

2/ 个常用邮箱用了注册前端服务网站

这次推荐使用render   https://render.com/
​		

## 开始搭建


一/ 后端搭建

github 项目地址:  https://github.com/jth445600/subconverter-heroku

注册 heroku 使用 临时邮箱注册两个账号 并且获取api 

heroku官网 
https://dashboard.heroku.com/apps

使用cf进行反代,并且解决heroku免费账户550小时的问题.

解决方案就是 需要创建两个容器 单双号交替使用.和以前的heroku-v2ray的处理方式是一样的.


```javascript
const SingleDay = '应用程序名1.herokuapp.com'
const DoubleDay = '应用程序名2.herokuapp.com'
addEventListener(
    "fetch",event => {
    
        let nd = new Date();
        if (nd.getDate()%2) {
            host = SingleDay
        } else {
            host = DoubleDay
        }
        
        let url=new URL(event.request.url);
        url.hostname=host;
        let request=new Request(url,event.request);
        event. respondWith(
            fetch(request)
        )
    }
)
```
搭建完woker之后,就可以配置前端了.

二/ 前端

前端使用免费的静态网页服务厂商来搭建.这里推荐使用render

注册 render 

  https://render.com/

打开这个网站,有自己的邮箱注册就行了,不用绑定信用卡,可以免费使用

也可以使用 cloudflare page

打开cloudflare的官网  www.cloudflare.com

github 项目地址: https://github.com/jth445600/sub-web

fork之后,修改一下
![20211120132246](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20211120132246.png)

修改刚才搭建的woker的地址

最后就是部署到render就可以了