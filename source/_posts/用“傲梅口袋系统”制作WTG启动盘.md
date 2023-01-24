---
title:  用“傲梅口袋系统”制作WTG启动盘
date: 2023-1-24
updated:
tags:  wintogo
categories: windows
keywords: 
description:
top_img: https://www.helloimg.com/images/2023/01/24/oROTUq.png
comments:
cover: https://www.helloimg.com/images/2023/01/24/oROTUq.png
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


今天来介绍用“傲梅口袋系统”制作WTG启动盘

### **一、  制作前准备工作**

1. 检查U盘或移动硬盘是否支持WTG:制作WTG的核心依赖于U盘或移动硬盘读写速度，电脑和移动存储设备建议USB3.0以上；U盘/移动硬盘至少为32GB大小。

2. 下载Windows 10镜像：制作WTG建议使用Windows 10 x64镜像，建议在官网下载；也可以在这个网站下载原版系统，网址： [https://hellowindows.cn/](https://hellowindows.cn/)

![](https://s2.loli.net/2023/01/24/Z6h8aRpqXkbzjFH.webp)

3. 下载并安装好[口袋系统WinToGo]软件，网址：[https://www.disktool.cn/wintogo.html](https://www.disktool.cn/wintogo.html)

---

### **二、开始制作**

打开**[傲梅口袋系统WinToGo]**软件，然后按照下面步骤操作：

1. 选择下图红框选项。（如果您是为Windows设备制作，请选择第二项）

![](https://s2.loli.net/2023/01/24/7zSqei9THhoRygv.webp)

2. 添加Windows镜像文件，如果没有请点击“**本地没有镜像请点击这里下载**”。

![](https://s2.loli.net/2023/01/24/O3xvLjodHJEDA6g.webp)

3. 选择USB设备，如果电脑上插有多个U盘或移动硬盘，请按照需要进行选择。

![](https://s2.loli.net/2023/01/24/IxeKlkXhLi3m95d.webp)

4. 同时在这一步也可以点击"高级设置"来更改WTG的类型（传统/虚拟硬盘）和启动方式（Legacy/UEFI）。

![](https://s2.loli.net/2023/01/24/lMSN9piR2QefIoa.webp)

5. 等待完成即可，制作快慢和您的U盘或移动硬盘读写速度有关。

![](https://s2.loli.net/2023/01/24/5P9TiXnFqxaHgtf.webp)



### **三、使用WTG系统**

1. 插入需要运行的电脑，按快捷键进入启动列表。大部分电脑主机的快捷键是F12，部分厂商会有不同。如果您不知道电脑的启动选择键，可以参考下图

![](https://s2.loli.net/2023/01/24/v9RmLyts45AhlrQ.webp)

2.耐心等待进入系统。由于系统会对不同的电脑做些适配，所以每次开机可能会慢一些，只要不超过半个小时都是正常的。

![](https://s2.loli.net/2023/01/24/OgY12t3snTe9ZXm.webp)

现在，您可以愉快地使用WTG系统玩耍啦！装上一些常用软件，从此自己的系统随身带，即插即用！



### **四、给WTG分区**

通常把WTG制作好后，下一步是给WTG分区，不然WTG只有系统分区。对于WTG分区来说，一般系统分区大小不得小于50GB，其它剩余空间一般是2个分区：软件和数据。当然，也可以不用分区。

例如：

128GB存储：50GB系统、30GB软件、其他分配给数据。

256GB存储：100GB系统、50GB软件、其他分配给数据。

## 这是个人建议，具体情况建议根据自身需求而定。

### **五、总结**
以上是使用“傲梅口袋系统WTG制作工具”制作WTG启动盘的方法，在学会这个方法后，你可以轻松的在苹果电脑上使用Windows系统。当然，WTG的作用不仅于此，你也可以借助它在陌生电脑中使用自己熟悉的操作系统和软件、也可以把它看做来宾系统，在保护自己隐私的同时也可以让别人使用你的电脑。如果你有类似需求，那快制作一个WTG启动盘吧！

本文的部分图片来源于网络，如果涉及侵权请告知删除。

### 六 WTG注意事项

在本地系统与WTG切换的方法

①本地→WTG：插入WTG的U盘/硬盘，重启本地系统，开机时会被引导至WTG。

②WTG→本地：在WTG关机，拔出U盘/硬盘，开机。

WTG默认不支持休眠，但是可以在组策略编辑器中开启。

WTG不能更新，可以通过修改注册表来“找回”更新功能。同样，如果提示"当前为WTG分区，无法执行操作"时，也可以用同样的方法解决。

WTG在运行时，不要拔出U盘/硬盘。如果拔出，轻则重装WTG，重则U盘/硬盘报废！

另外，微软官方文档也有WTG的常见问题FAQ。

[[https://docs.microsoft.com/zh-cn/previous-versions/mt185783(v=vs.85)]](https://docs.microsoft.com/zh-cn/previous-versions/mt185783(v=vs.85)]) 
