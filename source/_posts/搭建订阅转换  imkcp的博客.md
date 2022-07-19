---
title: 搭建一个在线订阅地址转换网站
date: 2022-07-19 12:32:46
tags:
---

本文介绍搭建一个在线订阅地址转换网站.

## [](https://blog.imkcp.xyz/subconverter/#%E5%BC%80%E5%A7%8B%E6%90%AD%E5%BB%BA "开始搭建")开始搭建

## [](https://blog.imkcp.xyz/subconverter/#%E5%90%8E%E7%AB%AF "后端")后端

### [](https://blog.imkcp.xyz/subconverter/#heroku "heroku")heroku

打开[github项目地址](https://github.com/BlueHtml/subconverter-heroku)，点个star，并fork此项目  
打开[heroku的官网](https://dashboard.heroku.com/apps)登陆后我们需要获取heroku账号的api\_key,按图点击  
![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716122750.png)  
往下翻，如图，复制2框内所示的内容  
![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716123007.png)  
回到我们刚才fork的github项目，如图添加两个名为`HEROKU_API_KEY`  
和`HEROKU_EMAIL`的Secret。说明如下:

| HEROKU\_API\_KEY | 刚才获取的heroku\_api\_key |
| --- | --- |
| HEROKU\_EMAIL | heroku账号的邮箱 |

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716123141.png)

然后如图，编辑`.github/workflows/heroku.yml`这个文件，修改`heroku_app_name`这个的值，不能重复，我建议是在heroku首页新建一个项目，取个不重复的名字，然后复制名字到这并取消创建![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716130413.png)

4.如图，激活actions

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716131017.png)如图运行action

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716131346.png)

5.不出意外的话，这样就代表成功了

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716131442.png)

同时，heroku账号首页也多了一个项目

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716131536.png)

6.访问 以下网址，来检测是否安装成功

<table><tbody><tr><td><pre><span>1</span><br></pre></td><td><pre><span>https://heroku项目的名字.herokuapp.com/version</span><br></pre></td></tr></tbody></table>

如果显示这样，就成功了

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716131838.png)

### [](https://blog.imkcp.xyz/subconverter/#koyeb "koyeb")koyeb

点一下这个图标,然后全部默认就行

[![Deploy to Koyeb](https://www.koyeb.com/static/images/deploy/button.svg)](https://app.koyeb.com/deploy?type=docker&name=subconver&ports=8080;http;/&image=jth445600/subconver)

[github项目地址](https://github.com/jth445600/subconverter-heroku-koyeb)

同样等到如图中1所示，访问以下地址

<table><tbody><tr><td><pre><span>1</span><br></pre></td><td><pre><span>图中2的地址/version</span><br></pre></td></tr></tbody></table>

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716132607.png)

如果是这样就代表成功了

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716132836.png)

### [](https://blog.imkcp.xyz/subconverter/#okteto "okteto")okteto

首先fork[本项目](https://github.com/yunbaitech666/oksubconver) 用github登录okteto [https://cloud.okteto.com](https://cloud.okteto.com/)

> 存在拼人品的问题,有可能注册不上,那就换个github账号,一般情况下用了很长时间的github都能正常注册

选择这个![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220718211755.png)

选择用github部署

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220718212006.png)

选择这个然后点 ‘launch’

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220718212023.png)

然后就不用管了  
等着部署完毕,大约两分钟的样子

出现running就是部署好了, 在浏览器打开这个链接

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220718212151.png)

如果在浏览器打开出现 504 timeout 503 或者其他什么错误

解决办法: 开无痕, 换浏览器.

开一个无痕窗口, 在上图给的链接后边加上 `sub?` 如果出现下图就是完成了

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220718212223.png)

到此, 用oketeto部署clash订阅转换后端 subconver就完成了

## [](https://blog.imkcp.xyz/subconverter/#%E5%89%8D%E7%AB%AF "前端")前端

前端使用免费的静态网页服务厂商来搭建.我这里推荐vercel，当然，你也可以使用cf pages

1.fork[这个github项目](https://github.com/CareyWang/sub-web)

2.修改默认后端地址，编辑src/views/Subconverter.vue 文件

在第258行backendOptions，修改后面`http://127.0.0.1:25500`为刚才heroku和koyeb返回的地址

注意：后面的`/sub?`不能删去，heroku地址一般为： `应用程序名1.herokuapp.com`

koyeb则为这里显示的地址，同理okteto也是显示的

![](https://gcore.jsdelivr.net/gh/imkcp-blog/photos@main/cfworkers/20220716133647.png)

此外，还能自定义多个后端地址格式如下

<table><tbody><tr><td><pre><span>1</span><br><span>2</span><br><span>3</span><br><span>4</span><br><span>5</span><br><span>6</span><br><span>7</span><br><span>8</span><br><span>9</span><br><span>10</span><br><span>11</span><br><span>12</span><br></pre></td><td><pre><span>backendOptions: [</span><br><span>  { value: "https://subsc.ednovas.xyz/sub?" },</span><br><span>  { value: "http://api.tsutsu.cc:520/sub?" },</span><br><span>  { value: "https://api2.tsutsu.cc/sub?" },</span><br><span>  { value: "https://api.v1.mk/sub?" },</span><br><span>  { value: "https://subcon.dlj.tf/sub?" },</span><br><span>  { value: "https://api.dler.io/sub?" },</span><br><span>  { value: "https://api.wcc.best/sub?" },</span><br><span>  { value: "https://api.hope140.live/sub?" },</span><br><span>  { value: "https://sub.proxypoolv2.tk/sub?" },</span><br><span>  { value: "https://sub.id9.cc/sub?" },</span><br><span>],</span><br></pre></td></tr></tbody></table>

3.由于heroku免费账号一个月只有550h的使用时间，所以我们需要多账号，请参考这篇文章[https://blog.imkcp.xyz/cf-workers/](https://blog.imkcp.xyz/cf-workers/)

同样是替换为cf pagers的网址或者自定义的workers地址

最后就是部署到中意的静态网页服务商了