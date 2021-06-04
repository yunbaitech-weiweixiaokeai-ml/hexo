---
title: 在手机上安装配置节点采集工具
date: 2021-06-04 21:22:28
tags:
---
一 下载termux
下载地址1 https://dl.coolapk.com/down?pn=com.termux&id=MjAyMDI&h=0cf1b95aqu631s&from=click

下载地址2 https://cdn.jsdelivr.net/gh/jth445600/hello-world@master/Termux_v0.73.apk
下载下来安装就行了

命令1 （推荐）

wget -N --no-check-certificate -q -O install.sh "https://cdn.jsdelivr.net/gh/jth445600/hello-world@master/termux_proxypoocheck.sh" && chmod +x install.sh && bash install.sh

命令2（有可能报错）

wget https://raw.githubusercontent.com/jth445600/hello-world/master/termux_proxypoocheck.sh && sh termux_proxypoocheck.sh

提示成功运行之后，在浏览器打开 `127.0.0.1:8080` 就可以看到了，采集需要等几分钟

**存在的问题**
手机性能不够，采集出来的质量和数量都比不了电脑采集，电脑采集版本进电报群看往期公告。

**重要**： 在设置里，一般是电池设置，设置termux自动后台运行，不然话，手机锁屏后一会就自动关了

参考文档：
https://www.sqlsec.com/2018/05/termux.html#toc-heading-4

https://jsharkc.github.io/2019/11/16/Android-Phone-as-linux-server/