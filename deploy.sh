#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
mkdir build/test

# 进入生成的文件夹
cd build

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:linyuxian/vue-press-blog.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:linyuxian/test-deploy.git master:deploy

# cd -