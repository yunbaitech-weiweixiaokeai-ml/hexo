---
title: 白嫖cloudflare域名邮箱
date: 2023-3-28
updated:
tags: 域名邮箱
categories: windows
keywords:
description:
top_img:
comments:
cover: https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/e3286a412bcb4ef8997d676332695e99-20230328114408-385b7d.png
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

# 白嫖cloudflare域名邮箱

&#x20;      在上一期视频中,我们购买了namesilo的付费域名, 我们就可以利用这个域名来薅一些羊毛了, 第一个推荐的就是cloudflare的域名邮箱, 配置简单, 而且用起来还稳定. 当然了, 这里不一定是namesilo的付费域名, 你使用其他的一些域名都是可以的. 闲话少说, 我们开始今天的内容.

### step 1 购买或领取一个域名

没有域名的小伙伴可以看一下上期视频, 自行购买一个, 价格便宜, 一年仅需一美元, 也就是人民币7元.

购买namesilo域名:    [https://youtu.be/YXbQenah8mI](https://youtu.be/YXbQenah8mI "https://youtu.be/YXbQenah8mI")

### step 2 注册一个cloudflare账号

注册地址: [ https://dash.cloudflare.com/sign-up](https://dash.cloudflare.com/sign-up " https://dash.cloudflare.com/sign-up")

注册过程比较简单, 有个邮箱能收验证码就可以了.

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/cf99318f7239a2cc2c023e2114be6337-20230328115451-43d029.png)

后边的包括添加域名和设置name server的具体操作, 大家看一下上期视频就明白了.

购买namesilo域名:    [https://youtu.be/YXbQenah8mI](https://youtu.be/YXbQenah8mI "https://youtu.be/YXbQenah8mI")

### step 3 添加 Cloudflare 的 MX 记录

选择自己要配置的域名之后, 点击侧边栏上的`电子邮件`&#x20;

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/b7cb51655b91188ddb98baee8f9fec8b-20230328115512-de3174.png)

进来之后, 会提示需要配置的`DNS`记录, 这个直接点击下面的`添加记录并启用` 就自动配置了, 可以看出cloudflare自动配置DNS还是很方便的.

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/c664938e4eeeacdf3325bbe9d97a0200-20230328115601-5e4d79.png)

等一段时间之后, 就可以看到已经配置成功了.

![](image/image_e0tuL8z6w-.png)

### step 4 配置 Cloudflare Email Routing

**4.1 Destination addresses （目标地址）配置**

这里我们首先配置目标邮箱地址。填入目标邮箱地址后，目标邮箱会收到来自 Cloudflare 的验证邮件，点击邮件的链接，即可验证成功。

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/49b8d8433c144adf6f925feb43331568-20230328115620-5f0370.png)

Destination addresses 目标地址是同一 Cloudflare 账户下所有域名共享的。同一个 Cloudflare 账户下，如果你在配置域名 A 邮件转发的时候验证了邮件地址 <test@163.com> ，那配置域名 B 邮件转发时可以直接填入 <test@163.com>，无需再次验证。

**4.2 Custom addresses 自定义地址**

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/2fd80a7cb887c7213fd6b9798bded342-20230328115634-a75570.png)

添加且验证目标邮箱后，在配置这里时，填入自己想使用的域名前缀，指向目标邮箱即可。

**4.3 Catch-all address 所有邮箱地址**

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/img/2023/03/28/1adb4ecfaef45e41c621596c57dca926-20230328115645-a4f9d9.png)

配置 Catch-all 后，无论邮箱前缀是什么，所有发给该域名的邮件都会转发到指定目标邮箱。

比较在乎隐私保护的朋友可以使用这个服务，比如在注册各种网站服务时用服务名称临时编个前缀，注册 craft 时就用 <craft@yunbaitech.top>；注册 disney+ 时就用 <disney@yunbaitech.top>。 这样收到垃圾邮件时，可以知道是哪家服务商把你的信息泄露了，也可以根据收件人来拒收邮件。

到这一步, 一个可以收信的域名邮箱就已经配置好了.&#x20;
