---
title: 让Linux设备自动上报IP地址到邮箱/Let Linux devices to report its IP address via Email
date: 2023-5-17 
updated: 
tags: Ip
categories: linux
keywords: mutt
description:
top_img: https://s1.ax1x.com/2023/05/17/p9WuoIH.png
comments:
cover: https://s1.ax1x.com/2023/05/17/p9WuoIH.png
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
有问题请加电报群: https://t.me/yunbaitech_chat
![enter description here](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684292410640.png)

很多本地的linux设备一般都是不接显示器的, 比如树莓派, 随身wifi刷的debian系统. 而且很多都是使用DHCP获取IP地址, 通常这种情况下都是去路由器后台查ip, 或者使用一些局域网设备扫描工具来实现.
windows上可以使用advanced ip scanner
 ![image.png](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684308473400.png)
linux系统可以使用 , 可以扫描到局域网开机的设备
```bash
apt install nmap # debian/ubuntu系统安装nmap
nmap -sP 192.168.1.0/24 # 此处假设局域网段位 192.168.1.0
```
包括路由器后台查看和上面两种方法都是可以看到ip的, 本文介绍一种利用邮件发信,让设备告诉我ta的ip地址是多少, 那当然了, 不适用于内网不能联网的局域网. 
## 第一部分 配置mutt邮件客户端
请跳转到博客: [https://yunbaitech.cf/2023/05/15/5592d7faa882/](https://yunbaitech.cf/2023/05/15/5592d7faa882/)
## 第二部分 配置获取ip并发信
在配置并测试好发信功能之后, 开始配置自动获取ip并发信的shell脚本,
请依次输入以下的各条命令
```shell
sudo su  # 获取root权限 , 以下所有操作均需要root权限
if [ ! -f "/etc/init.d/send-ip-address.sh" ]; then touch /etc/init.d/send-ip-address.sh; fi
```
```bash 
cat > /etc/init.d/send-ip-address.sh  <<-EOF
#!/bin/bash
# 先等20秒再执行脚本, 等设备获取到dhcp
sleep 20
# 设置收件人邮箱地址
recipient="abc@qq.com"   ## 这里修改成你的邮箱地址

# 定义内部IP地址获取函数
get_local_ip() {
  hostname -I | awk '{print $1}'
}

# 获取本地 IP 地址，并检测是否为空字符串
local_ip=$(get_local_ip)
if [[ -z "$local_ip" ]]; then
  echo "Failed to get local IP address. Waiting for 2 minutes and retrying..."
  sleep 120
  local_ip=$(get_local_ip)
fi

# 发送邮件
if [[ -n "$local_ip" ]]; then
  echo "Your device has started up. Its local IP address is $local_ip." | mutt -s "[Startup] Device IP Address" $recipient
else
  echo "Failed to get local IP address. Please check your network setup."
fi

EOF
```

```bash
chmod +x /etc/init.d/send-ip-address.sh
vim  /etc/init.d/send-ip-address.sh
```
打开该文件之后, 修改第5行的 abc@qq.com  为你的邮箱,  qq 163 139 126 outlook都可以.
修改完成之后, 输入命令
```shell
sudo  su # 获取root用户
update-rc.d send-ip-address.sh defaults
```
这就搞定了, 每次开机的时候, 如果成功获取到Ip并联网的话, 会邮件提醒你内网IP地址.注意是有延迟, 得等一会.

有问题请加电报群: https://t.me/yunbaitech_chat
![enter description here](https://cdn.jsdelivr.net/gh/jth445600/picgo@master/小书匠/1684292410640.png)

参考文档:  https://windard.com/project/2015/11/11/Install-Msmtp-And-Mutt

http://forum.eepw.com.cn/thread/258882/1/

https://www.codelast.com/%e5%8e%9f%e5%88%9b-%e8%ae%a9%e6%a0%91%e8%8e%93%e6%b4%be%e8%87%aa%e5%8a%a8%e4%b8%8a%e6%8a%a5ip%e5%9c%b0%e5%9d%80%e5%88%b0%e9%82%ae%e7%ae%b1let-raspberry-pi-to-report-its-ip-address-via-email/

https://lightless.me/archives/Send-IP-To-Mail-On-Raspberry-Pi-Start-Up.html