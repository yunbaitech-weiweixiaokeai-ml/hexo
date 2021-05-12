---
title: freevps02-使用免费容器heroku搭建v2ray/xray/trojan/ss多合一科学上网
date: 2021-05-12 12:32:46
tags:
---
##### 详细视频教程YouTube：

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


### CloudFlare Workers反代代码（支持VLESS\VMESS\Trojan-Go的WS模式，可分别用两个账号的应用程序名（UUID与path保持一致），单双号天分别执行，那一个月就有550+550小时）

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
### 原作者项目地址：https://github.com/mixool/xrayku

#### v2ray客户端

##### 1、在Windows上使用v2rayN客户端，
下载地址： `https://github.com/2dust/v2rayN/releases`

也可以使用winXray
下载地址： `https://github.com/TheMRLL/winxray`

也可以使用clash
下载地址  https://github.com/Fndroid/clash_for_windows_pkg/releases


##### 2、在安卓手机上使用V2RAYNG客户端，下载地址：`https://github.com/2dust/v2rayNG/releases`

##### 3、苹果手机，在PDD上搜索 小火箭ios  1￥ 购买App Store的美区ID ，**版本号2.1.68或者更高**
##### 4、软路由中 passwall  / ssr++