---
title:  制作win11 windows to go
date: 2023-1-24
updated:  2023-1-24
tags: wintogo
categories: windows
keywords:
description:
top_img: https://www.helloimg.com/images/2023/01/24/oR9Pu0.png
comments: 
cover:https://www.helloimg.com/images/2023/01/24/oR9Pu0.png
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


# 制作win11 windows to go (方法二)

## 目录

- [制作win11 windows to go (方法二)](#制作win11-windows-to-go-方法二)
  - [目录](#目录)
- [一、下载资源](#一下载资源)
  - [1. 下载微软官方Windows 11镜像下载工具](#1-下载微软官方windows-11镜像下载工具)
    - [方法一 — 从微软官方网站下载](#方法一--从微软官方网站下载)
    - [方法二](#方法二)
  - [2. 下载WindowsNTSetup](#2-下载windowsntsetup)
  - [3. 下载DiskGenius](#3-下载diskgenius)
- [二、开始制作](#二开始制作)
- [三、重启进入系统,开始设置](#三重启进入系统开始设置)

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-04-54/43204ac6-cd0a-462f-9c7b-e54d1c9cacdd.webp?raw=true>)

在Windows 10（企业版/教育版）有Windows To Go这种功能

所谓Windows To Go就是把系统装在U盘里

她可不是什么Windows PE系统，而是一个货真价实的Windows系统

微软官方对Windows To Go的介绍：[https://docs.microsoft.com/zh-cn/windows/deployment/planning/windows-to-go-overview#wtg-prep-intro](https://docs.microsoft.com/zh-cn/windows/deployment/planning/windows-to-go-overview#wtg-prep-intro "https://docs.microsoft.com/zh-cn/windows/deployment/planning/windows-to-go-overview#wtg-prep-intro")

但是在Windows 10 2004及更高版本中，她已经不复存在了！

这不妨碍我们制作Windows11 To Go

硬件要求：

电脑至少是x86架构 &#x20;

U盘在64GB及以上，读写速度30MB/S以上

软件要求：

Windows7以上系统才能制作

废话少说

# 一、下载资源

## 1. 下载微软官方Windows 11镜像下载工具

### 方法一 — 从微软官方网站下载

[https://software-download.microsoft.com/download/pr/888969d5-f34g-4e03-ac9d-1f9786c69161/MediaCreationToolW11.exe](https://software-download.microsoft.com/download/pr/888969d5-f34g-4e03-ac9d-1f9786c69161/MediaCreationToolW11.exe "https://software-download.microsoft.com/download/pr/888969d5-f34g-4e03-ac9d-1f9786c69161/MediaCreationToolW11.exe")

下载完成，你会看到：

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/704edae4-195a-433c-a57f-563a73d92cbf.webp?raw=true>)

双击打开

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/77756150-8239-42c4-bfab-6e6eb417585b.webp?raw=true>)

点击“接受（A）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/1a4acf92-5624-4190-b256-71af07e95074.webp?raw=true>)

单击“下一页（N）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/4e9c8afc-0aa4-483e-a66f-20ccfbb27539.webp?raw=true>)

选择“ISO文件”，单击“下一页（N）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/def8b8b3-0103-4ec0-b32e-977283fecc20.webp?raw=true>)

选择一个位置保存

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/4242eb01-ea5e-4479-9b29-7f7428d59261.webp?raw=true>)

请您等待下载完成

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/0409fab2-0389-4ad0-9e8d-0ef6239644ac.webp?raw=true>)

下载完成，你会看到：

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/e80929f8-1d8e-4be7-95ba-e39822410dce.webp?raw=true>)

留着他备用

### 方法二 

下载Windows 10镜像：制作WTG建议使用Windows 10 x64镜像，建议在官网下载；也可以在这个网站下载原版系统，网址： https://hellowindows.cn/

## 2. 下载WindowsNTSetup

[https://down10.zol.com.cn/gongju/WinNTSetup\_v502a.zip](https://down10.zol.com.cn/gongju/WinNTSetup_v502a.zip "https://down10.zol.com.cn/gongju/WinNTSetup_v502a.zip")

下载完成是一个.zip文件，解压这个文件

解压后：

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/127eec6b-5447-46da-a05f-17fdb00f64e2.webp?raw=true>)

留着它备用

## 3. 下载DiskGenius

[https://download.geniusite.com/DG5431342\_x86.zip](https://download.geniusite.com/DG5431342_x86.zip "https://download.geniusite.com/DG5431342_x86.zip")

下载完成后，解压

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/069b11e0-aa78-4616-8d18-d08b7838a306.webp?raw=true>)

所有软件的下载告一段落

# 二、开始制作

分区

先插入您的存储介质

再打开“DiskGenius”文件夹

双击打开“DiskGenius.exe”

接着备份U盘数据

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/05c808f4-5fde-4ed5-ab31-13661b408ebc.webp?raw=true>)

找到您刚才插入的存储介质，注意“接口类型”是不是USB

右键您的存储介质，选择删除所有分区

一定要备份文件！

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/eb853643-5c5c-4083-ab8c-ebfc6c1710dd.webp?raw=true>)

先点击“是（Y）”，删除所有分区

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/cf835b7f-62b4-48fc-8b41-5c05f67f54a0.webp?raw=true>)

再点击这个按钮

最后点击“是（Y）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/faa395f3-8d11-42a9-be83-9005d0ada463.webp?raw=true>)

确认分区表是MBR格式，如果是GUID（GPT），那么制作的系统只能以UEFI启动，这对使用Legacy引导的电脑很不友好

如果是GPT（GUID）格式，请点击“”**转换分区表类型为MBR格式（B）”**

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/91ae6fd7-a0d2-461d-a939-a2b80b0d1a23.webp?raw=true>)

点击“建立新分区（N）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/b1be5cd8-c565-417c-833e-c17680bffa58.webp?raw=true>)

我们只需要创建一个NTFS系统分区，不用创建ESP（EFI启动）分区

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/5e136014-d608-4ae2-835f-81114553812a.webp?raw=true>)

可以新建一个D盘

建议在磁盘末尾留下一个1GB左右的空间，这个我们可以用于安装Windows PE操作系统，以便维护WTG系统

接着，点击“保存更改”按钮

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/c3024e9b-584d-4191-b8ea-4b2611af154d.webp?raw=true>)

点击“是（Y）”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/b1d4acc5-f606-4cb8-b26e-d768c178044e.webp?raw=true>)

点击“是（Y）”

至此，我们的磁盘分区步骤完成

释放镜像

打开这个文件 &#x20;

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/6609c693-dd5f-4c43-a980-9e78dedd27a4.webp?raw=true>)

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/d2de289d-ed9b-4a75-a4b8-a846a2cb58b3.webp?raw=true>)

如果出现这个窗口，请点击“确定”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/7e6d1e42-3ba4-4f35-864c-1c7681942f1c.webp?raw=true>)

等待进度条走完

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/297ba66a-0125-4a84-bc53-6f2933c4d3b8.webp?raw=true>)

引导驱动器和安装驱动器都选择刚才在U盘上创建的唯一一个分区

选择你刚才下载的Windows.iso

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/ca6d4aa0-9352-49b6-91e8-d544faa2a405.webp?raw=true>)

这里选择专业版

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/a74f0ec0-6637-422a-96e7-9e2be187ec36.webp?raw=true>)

确认设置无误后，就可以点击“安装”了

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/53dbbc7b-a7f4-4f58-8f06-4195b15de9cd.webp?raw=true>)

这里什么都不要动，只可以点击“确定

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/f6c87d72-435d-47ce-894c-05cd0a75ccba.webp?raw=true>)

等待完成

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/79fa8ca7-6e5b-4e59-92c2-d8f5f244a58c.webp?raw=true>)

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/7cfd64a7-9f67-47b7-be8a-ade2ad917578.webp?raw=true>)

镜像释放完成，点击“重启”

释放Windows PE系统不是必须的！

# 三、重启进入系统,开始设置

![](https://gcore.jsdelivr.net/gh/jth445600/picgo@master/img/image_KH5qoKwBAu.png)

从BIOS或操作系统设置启动顺序进入Windows 11 To Go

![](<https://gcore.jsdelivr.net/gh/jth445600/picgo@master/img/2023-1-24 16-19-30/c3eeaf6a-44cc-4f64-87b5-0ad0b5ee4aa6.webp?raw=true>)

![](<https://gcore.jsdelivr.net/gh/jth445600/picgo@master/img/2023-1-24 16-19-30/671ab0a7-aeeb-431a-9de3-53a1036b4e08.webp?raw=true>)

等待Windows准备就绪

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/05b13301-3748-4d72-ac38-83aabc046d8e.webp?raw=true>)

浓浓的诗情

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/5523501b-fd68-4194-8c75-b06dfa3e9a89.webp?raw=true>)

新的开始动画

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/8e92a27f-aa88-4e22-b76a-0666d0a82b41.webp?raw=true>)

语言一定要选择中文（简体）

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/8c45bdeb-36f8-4b75-a66a-2ff99cb8c83f.webp?raw=true>)

地区选择中国

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/3442086c-8f53-4a20-b3ed-dcf208ff0481.webp?raw=true>)

选择键盘布局

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/3c57eec6-c1e3-42d0-b31d-c6425601e942.webp?raw=true>)

跳过

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/37324b67-831a-42b7-b0d3-778d6d4dbf44.webp?raw=true>)

正在检查更新

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/e8b0e47b-2e36-48c4-a9ef-ea2f189869fb.webp?raw=true>)

请查看许可协议

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/9aa952d5-3a3e-4e44-ba87-b863462163c4.webp?raw=true>)

选择“针对个人使用进行设置”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/85ba81a2-2d89-4824-a9a2-2ce0615b0116.webp?raw=true>)

先选择“脱机账户”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/e7f8a961-bfe2-4881-9bdb-7dcba88b6754.webp?raw=true>)

点击“受限的体验”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/aa14e2e8-24a5-4754-bf48-42671e2eacbb.webp?raw=true>)

输入一个账户名

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/b2b3da85-6f7c-4556-983d-96838e03ad74.webp?raw=true>)

不要输入密码，直接点击“下一页”

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/3d18519a-40d6-4e7d-b89e-fdd16ea942cc.webp?raw=true>)

接受隐私设置

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/0d5af883-a98f-4d9c-ae40-c0f1499ad74b.webp?raw=true>)

第二次检查更新

![](<https://github.com/jth445600/picgo/blob/main/img/2023-1-24 16-19-30/46c0f65f-430f-4813-9496-a6a14b77df0d.webp?raw=true>)

准备界面

进入桌面后，就可以使用Windows To Go的系统了

四、注意事项

1.  不可以开启TPM（受信任安全平台模块）
2.  请关闭“Windows Update”服务并禁用她
3.  因为这个MBR格式的U盘只有一个分区，并没有ESP分区，所以我制作的Windows To Go不支持安全启动（Secure Boot），需要每次使用时，在主板上关闭（Secure Boot）安全启动
