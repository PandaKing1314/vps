#使用Ubuntu22.04作为基础镜像
FROM ubuntu:22.04
#安装 Shellinabox
RUN apt-get update &&|
apt-get install -y shellinabox &8 |
apt-get clean && |
rm -rf /var/lib/apt/lists/* /tmp/*/var/tmp/*
#设置root 用户的密码为‘root'
RUN echo 'root:Aa123456' | chpasswd
#暴露22端口
EXPOSE 22
# 启动 Shellinabox
CMD ["/usr/bin/shellinaboxd"，"-t".
Bash
"-s"，"/:LOGIN"]
