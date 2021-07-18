---
title: cloudflare优选IP工具-使用cloudflare CDN提高科学上网速度 CDN提高科学上网速度
date: 2021-05-14 01:05:59
tags:
---
本期视频地址: https://youtu.be/2agY6GLLte4

### 这个是第二期视频,如果看不明白,先看第一期.
https://youtu.be/aAVldSZv6hk


### IP优选项目地址: 
https://github.com/badafans/better-cloudflare-ip

#### windows下载下来解压 双击 CF优选即可
![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1620928108994.png)
=======================================================================

=================================================================

=================================================================

# 如果你没有树莓派或者其他Linux系统的软路由，不要用这个脚本

=================================================================

================================================================
#### linux一键安装脚本
## 这个是给本地Linux设备使用的,比如树莓派,不是vps.
```shell?linenums
wget -N --no-check-certificate -q -O install.sh "https://cdn.jsdelivr.net/gh/jth445600/hello-world@master/cf-ip.sh" && chmod +x install.sh && bash install.sh
```
=================================================================
### cloudflare的网址: https://dash.cloudflare.com/
![20210412001029](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210412001029.png)
#### 首次使用的一些注意事项:
1. 需要注册,使用邮箱注册即可,要求邮箱可以收验证码即可.
2. 第一次打开worker,会提示输入一个专属域名,默认即可

### 具体操作见视频 [点这](https://youtu.be/tNgM4qcCVeY) https://youtu.be/tNgM4qcCVeY

注意: 把`vir.445600.ga`改成自己的节点的 **域名**

```javascript
addEventListener(
"fetch",event => {
let url=new URL(event.request.url);
url.hostname="vir.445600.ga";
let request=new Request(url,event.request);
event. respondWith(
fetch(request)
)
}
)
```