---
title: 9.9包邮的随身WIFI刷Debian系统, 变成插上USB口就能用的随身科学上网linux设备
date: 2023-5-17
updated:
tags: debian
categories: windows
keywords: wifi
description:
top_img: https://s1.ax1x.com/2023/05/17/p9RjGlt.png
comments:
cover: https://s1.ax1x.com/2023/05/17/p9RjGlt.png
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

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291955377.jpg)
这是一个9.9就能买到的， 4G USB 随身 Wi-Fi，你可能不会想到它居然跑的是安卓系统。并且还能刷 debian 系统，甚至你还能刷 openwrt 成为软路由，更棒的是 4G 和 Wi-Fi 、USB 等功能都正常工作。

更新日期: 2023年5月16日
购买链接:  【淘宝】[https://m.tb.cn/h.UvpmkC1?tk=sGbodnsOSIy](https://m.tb.cn/h.UvpmkC1?tk=sGbodnsOSIy) CZ3457 「免插卡 随身wifi无线移动wi-fi三网切换网络流量4g便携路由器网卡电脑上笔记本神器全国通用宽带车载随车wifi」
点击链接直接打开 或者 淘宝搜索直接打开
选择最便宜的9.9元的套餐购买.
> 备注上: 请发骁龙410版本. 

这家是随机发货的, 如果买来发现不是410, 申请退货就行, 有运费险.
当然了, 你也可以在闲鱼搜索改装好并刷好debian系统的随身wifi , 价格从30到50不等.

### 一 - 准备工作

1. **高通410（msm8916）方案的随身 Wi-Fi**：板子上的丝印是 UFI001B、UFI001C、UFI003、UFI-W-001 最好，或者 SP970（不推荐，细分版本目前13个太多，基本要短接才能进 9008 模式，然后现在的 openwrt Wi-Fi 也有问题）、UZ801 也 OK
2. **一台 Windows 电脑**（建议安装火绒，一些文件会被 Win 默认防护当病毒删除）
3. **螺丝刀**（拧随身 Wi-Fi 十字小螺丝）
4. SSH客户端 
- [Download PuTTY: latest release](https://www.putty.be/latest.html)（PC），当然亦可根据自己的习惯喜好使用相应的SSH客户端。

到手后第一件事，先插上电，连上随身 Wi-Fi 提供的 Wi-Fi，进入后台，检查下是否能正常工作，防止到手就是坏的；然后用螺丝刀拆开检查板子，是否有卡槽，以及上面的版本丝印。（可以看到我的这款有卡槽，丝印是：UFI003_MB ）
![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291955378.jpg)
> 如果你是购买的我推荐的小讯随身wifi, 拆开后不是这个样子,我的这款reset键在尾端,能插卡, 而且找不到ufi003的丝印, 申请退货就行了.

### 二-- 检查买到的随身wifi是不是骁龙410方案

1. 在windows安装**随身WIFI助手**（水遍工具箱），来自酷安的作者：酷按水遍 [助手官方版下载](https://www.123pan.com/s/8y49-oBZ0h)，安装时选择驱动程序全部安装！

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954904.png)
安装的过程也比较简单, 选择安装位置, 下一步下一步就行了, 安装过程比较长, 而且作者加了很多乱七八糟的音乐和图片, 无视就好了.
等安装完成之后, 就能看到上面的图片. 

2. 将随身wifi直接查到电脑usb口, 电脑会弹出网络共享选择, 选择''是''就好了, 注意此时电脑会断网.然后回到随身wifi助手界面, 输入 `0` 意思是刷新界面, 应该就可以看到左上角提示ADB设备连接了.
3. 然后输入`01`查看设备信息. 如果在弹出的对话框里看到
```bash
c p u 型 号 ：msm8916
----------------------------------------
安 卓 版 本 ：4.4.4
```
就说明是 骁龙410了
### 三 -- 开始备份随身wifi数据
为了防止刷坏,或者哪天后悔, 一定要在刷机之前进行一次备份. 

1. 将随身wifi拔下来, 下载备份软件 [https://www.123pan.com/s/FmnKVv-Oogxh](https://www.123pan.com/s/FmnKVv-Oogxh) , 下载下来之后解压, 他这个文件夹里东西比较多, 找到MIKO, 将其解压.

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954905.png)![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954906.png)
双击`miko.exe`就开始安装了, 安装也比较简单, 下一步下一步就行了, 等安装好之后, 在桌面miko的图标上, 右击打开文件位置, 其实就是打开miko的安装位置, 你如果知道安装在哪的话, 也可以直接打开. 然后把上面图片中的 `loader.exe`复制到MIko的安装目录, 然后双击`loader.exe`就可以打开miko的主界面了.
你肯定会想,为啥这么麻烦, 这是因为这个软件是收费的, 下载的这个版本是破解版.

2. 如果外壳拆开了, 直接按着reset键,按着不动把棒子插到电脑USB口, 插入之后就可以松开了. 如果没有拆开, 就找个牙签啥的插入reset口按着, 再插入电脑USB口, 插入之后就可以松开了. 
3. 进入miko之后 （点read，partition backup，双击下面double click to open save folder，选好救砖包生成的路径，点load partition structure，点read full image就能制作刷机救砖包，大概5分钟以内），保存好这个名为.bin的单文件。然后就备份好了.

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954907.jpg)
如果你后期真的玩崩了, 想恢复备份,请看[这篇文档](https://www.coolapk.com/feed/37834896?shareKey=NjRjYWIxMjFhYTcxNjQzNjkwODM~&shareFrom=com.coolapk.market_13.1.1). 
### 四-- 开始刷机

1. 去下载刷机包, 下载地址: [https://www.123pan.com/s/XwVDVv-WICn3](https://www.123pan.com/s/XwVDVv-WICn3)

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954908.png)
选择这个下载下来,并解压.

2. 拔下来棒子重新插到电脑USB口, 这次不用按着reset键, 只有备份和恢复的时候才用按着, 打开随身wifi助手输入`04`进入fastboot刷机模式.

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954912.png)
进入刷机模式时候, 打开刚才解压的文件夹, 双击fash.bat就可以开始自动刷机了.
![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954909.png)
在刷机的过程中, 需要多次按回车确认, 等到出现done的是就已经刷好了.
> 注意刷机过程中不要断电,拔出棒子,会变砖的.

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954910.png)
等刷完之后, 重新插拔.准备使用SSH连接.
### 五--更改驱动
> 注意: 这步不是必须的, 有些电脑重新插拔之后, 就能提示一个新的网络接入了, 有的电脑需要重新安装驱动.

![](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954920.png)
输入 `2`打开设备管理器, 这里实际上会出现两种情况.第一种就是下面的图片, 直接卸载设备就行了, 卸载完之后就变成第二种情况了.  卸载完驱动之后, 再重新插拔一下. 
一种就是下图
![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954911.png)
第二种情况,如下图所示, 会在其他设备里出现一个带感叹号的设备, 不一定是图片里名字, 一般是数字名.
![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954913.png)

1. 点击驱动程序选项卡，更新驱动程序；
2. 浏览我的电脑以查找驱动程序；
3. 让我从计算机上的可用驱动程序列表中选择；
4. 找到“网络适配器”；
5. 左侧厂商找到“Microsoft”，右侧找到“基于远程NDIS的Internet共享设备”；
6. 在跳出的警告对话框中选择“是”。

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954914.png)
完成之后, 就会弹出一个新的网络连接, 
![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954915.png)
打开网络连接, 就可以看到多了网络适配器, 查看详细信息,就可以看到192.168.68.1 的网段, 到这一步就完成了.
### 六-- ssh连接, 配置无线网络.
打开putty, 地址为 192.168.68.1 , 输入账号 root   密码:  1
![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954916.png)

1. SSH输入：
```
nmtui
```

1. 进入网络管理界面

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954917.png)

2. 编辑链接—网桥bridge—编辑—wifi—删除—确定

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954918.png)

3. 启动链接—WI-FI—WiFi名—密码（成功链接WIFI名前会出现 ***** 号）

![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684291954919.png)

4. 返回—确定

到这个一步就连接网络了, 在ssh输入 `ping www.baidu.com`看看网络是否通了,然后就可以快乐的玩耍了. 

