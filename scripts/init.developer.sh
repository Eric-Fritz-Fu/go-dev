cd

# 搭建Go开发环境
mkdir -p go/src

# 写入.bashrc
cd /home/developer
echo "export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> .bashrc
echo "export GO111MODULE=on" >> .bashrc
echo "export GOPROXY=https://goproxy.cn" >> .bashrc
echo "export GOPATH=~/go" >> .bashrc
echo "export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> .bashrc
