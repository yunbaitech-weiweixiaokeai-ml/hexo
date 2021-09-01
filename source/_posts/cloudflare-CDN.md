---
title: 最新优选IP工具-使用cloudflare CDN提高科学上网速度
date: 2021-04-12 00:00:59
tags:
---
本期视频地址: https://youtu.be/tNgM4qcCVeY

### IP优选工具下载网址: https://github.com/XIU2/CloudflareSpeedTest

![20210412002308](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/20210412002308.png)
#### 国内推荐使用`蓝奏云`下载,速度更快一些.

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