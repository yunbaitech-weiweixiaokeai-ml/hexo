#!/bin/bash

# 配置环境
npm install -g hexo-cli
npm install

# 安装主题(你们可以改成自己喜欢的主题)
#git clone https://github.com/theme-next/hexo-theme-next themes/next

# 使用新的渲染器
npm install hexo-renderer-pug hexo-renderer-stylus --save
npm install hexo-generator-search --save

# 处理图片
npm i hexo-image-link --save

# 复制文章到指定目录
# cd ../
# cp -r `ls | grep -v hexo | grep -v config.yml | xargs` hexo/source/_posts
# 复制配置文件
#cp config.yml hexo

# 开始构建
echo ">>> Clean cache files ..."
hexo clean

echo ">>> Generate file ..."
hexo generate
