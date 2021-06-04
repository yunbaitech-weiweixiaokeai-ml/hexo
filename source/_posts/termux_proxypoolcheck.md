---
title: 在安卓手机上安装配置节点采集工具
date: 2021-06-04 21:22:28
tags:
---
一 下载termux
下载地址2 https://f-droid.org/packages/com.termux/
先是下载下来F-Droid,就是一个软件市场，然后在这个软件市场里搜索`termux`
进行安装

方法2 有Google PLAY的直接在里边搜索 termux下载安装即可

下载下来安装就行了


命令
```
wget -N --no-check-certificate -q -O install.sh "https://445600.ml/termux_proxypoocheck.sh" && chmod +x install.sh && bash install.sh
```


提示成功运行之后，在浏览器打开 `127.0.0.1:8080` 就可以看到了，采集需要等几分钟

**存在的问题**
手机性能不够，采集出来的质量和数量都比不了电脑采集，电脑采集版本进电报群看往期公告。

**重要**： 在设置里，一般是电池设置，设置termux自动后台运行，不然话，手机锁屏后一会就自动关了

参考文档：
https://www.sqlsec.com/2018/05/termux.html#toc-heading-4

https://jsharkc.github.io/2019/11/16/Android-Phone-as-linux-server/