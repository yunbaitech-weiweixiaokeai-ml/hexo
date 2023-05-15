## 第一部分 安装mutt邮件客户端
请跳转到该文章

[linux配置mutt命令行邮件客户端](https://yunbaitech.top/2023/05/15/5592d7faa882/)

## 第二部分 配置shell脚本
新建一个名为 `check_temperature.sh` 的脚本
```bash
sudo su
cd /root
if [ ! -f "/root/check_temperature.sh" ]; then touch /root/check_temperature.sh; fi
vim /root/check_temperature.sh 

```
将下面这些内容粘贴到编辑区
```bash
#!/bin/bash

    temperature=$(echo $[$(cat /sys/class/thermal/thermal_zone0/temp)/1000])
    
    if [ $temperature -gt 60 ]; then
        echo "CPU温度过高: ${temperature}°C"
        echo "laptop主机报警:CPU温度过高" | mutt -s "laptop主机报警:CPU温度过高" xxxxx@example.com
    fi
```
xxxx@example.com 替换你的收信邮箱. 这里设定的温度是60℃
将 该脚本加入 crontab, 让其每隔几分钟就运行一次.
输入命令
```bash
crontab -e
```
然后复制粘贴如下内容
```bash
*/5 * * * * /bin/bash /root/check_temperature.sh
```

1. 其中 /root/check_temperature.sh 表示要运行的 shell 脚本路径。*/5 * * * * 表示每隔 5 分钟执行一次该任务。
2. 保存并退出编辑器即可。

这样就成功创建了一个每隔 5 分钟检查 CPU 温度并处理异常的定时任务, 当温度超过60℃时就会发邮件通知.

