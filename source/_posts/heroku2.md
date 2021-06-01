---
title: freevps02-第二弹-使用免费容器heroku搭建v2ray/xray/trojan/ss多合一科学上网
date: 2021-05-13 22:24:18
tags:
---
### 临时邮箱
推荐使用域名邮箱
没有的话,去百度搜索一下"临时邮箱"

临时邮箱1(失效了): https://temp-mail.org/zh/ 
推荐这个,需要输验证码,挂代理,换个IP就可以更换邮箱地址,代理可以用我第五期分享的节点.
见这: https://youtu.be/7-YOdAtbu7E

临时邮箱2:https://www.moakt.com/zh
没测试过,可以试试

#### 前言:
1、注册heroku,注册也十分的简单,只需要一个邮箱即可,这里推荐使用域名邮箱.
注意:**注册时需要挂代理**不然打不开验证码
2、推荐使用`UUID`生成器，不要随意自己编一个`UUID`有可能会出现无法连接的情况。
`UUID`在线生成地址: https://1024tools.com/uuid

#### 注意：滥用可能导致账户被删除.解决方法见后续教程.



## 服务端创建操作流程 
[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://dashboard.heroku.com/new?template=https://github.com/YG-tsj/Heroku-xray-trojangows-ssws)  
点击`Deploy`，会跳转到heroku app创建页面，填上应用程序名、选择节点（欧洲）、自定义UUID码，其他建议保持默认，点击下面deploy，几秒后搞定！    

## vmess vless trojan-go shadowsocks对应客户端参数的参考如下,末尾带()里的内容仅为提示

## 1：Xray

### 代理协议：vless+ws+tls 或 vmess+ws+tls
* 服务器地址：自选ip（如：icook.tw）
* 端口：443
* 默认UUID：8f91b6a0-e8ee-11ea-adc1-0242ac120002   (务必创建时自定义UUID码)
* 加密：none
* 传输协议：ws
* 伪装类型：none
* 伪装host：****.workers.dev(CF Workers反代地址)
* SNI地址：****.workers.dev(CF Workers反代地址)
* path路径：/自定义UUID码-vless 或 /自定义UUID码-vmess    (注意：前有斜杠/)
* vmess额外id（alterid）：0
* 底层传输安全：tls
* 跳过证书验证：false

## 2：Trojan-Go+ws

* 服务器地址：自选ip（如：icook.tw）
* 端口：443
* 密码：8f91b6a0-e8ee-11ea-adc1-0242ac120002   (务必创建时自定义UUID码) 
* 传输协议：ws
* path路径：/自定义UUID码-trojan  (注意：前有斜杠/)
* SNI地址：****.workers.dev(CF Workers反代地址)
* 伪装host：****.workers.dev(CF Workers反代地址)

## 3：Shadowsocks+ws+tls

* 服务器地址: 应用程序名.herokuapp.com
* 端口: 443
* 密码：8f91b6a0-e8ee-11ea-adc1-0242ac120002   (务必创建时自定义UUID码) 
* 加密：chacha20-ietf-poly1305
* 插件选项: tls;host=应用程序名.herokuapp.com;path=/自定义UUID码-ss


#### CloudFlare 

**重要说明**

Workers反代代码（支持VLESS\VMESS\Trojan-Go的WS模式，推荐使用域名邮箱或者临时邮箱注册8个账号,然后创建8个容器.修改代码里边的`xiaowen`成自己的应用,推荐像我这样使用八个数字.
注意（UUID与path保持一致），
该代码可以做到每隔15分钟换一个容器,可以有效避免短期大流量导致封号的问题.并且单双号天分别执行，那一个月就有550+550小时
如果觉得麻烦可以申请4个.具体操作见视频对应部分
**注意:注册时需要挂代理,而且尽量每注册一个账号就换一个ip**

```javascript
    const _01 = 'xiaowen01.herokuapp.com'
    const _02 = 'xiaowen02.herokuapp.com'
    const _03 = 'xiaowen03.herokuapp.com'
	const _04 = 'xiaowen04.herokuapp.com'
	const _05 = 'xiaowen05.herokuapp.com'
	const _06 = 'xiaowen06.herokuapp.com'
	const _07 = 'xiaowen07.herokuapp.com'
	const _08 = 'xiaowen08.herokuapp.com'
	
addEventListener(
    "fetch",event => {
    
        let nd = new Date();
        let x = 0; 
        x = nd.getDate();
        nd = nd.getMinutes()/15;
        if (nd<1)
      {
          if (x%2)
          {
             host = _01
           } else
           {
              host = _02
            }
      }
        else if (nd<2)
      {
           if (x%2)
          {
             host = _03
           } else
           {
              host = _04
            }
      }
        else if (nd<3)
      {
           if (x%2)
          {
             host = _05
           } else
           {
              host = _06
            }
      }
        else if (nd<4)
      {
         if (x%2)
          {
             host = _07
           } else
           {
              host = _08
            }
      }
        else
      {
	      host = _01;
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