cd

# 创建用户
useradd --group wheel -s /usr/bin/bash developer
echo 000000 | passwd root --stdin
echo 000000 | passwd developer --stdin

# 安装常用软件
yum install apt-utils sudo wget vim make git236 tree -y

# 安装Go
echo Downloading Go
wget https://golang.google.cn/dl/go1.19.3.linux-amd64.tar.gz --no-verbose
echo Unpacking Go
tar -xzf *.tar.gz
echo Installing Go
mv go /usr/local
echo done.

# 安装vscode插件依赖
go install -v golang.org/x/tools/gopls@latest
go install -v github.com/ramya-rao-a/go-outline@latest

