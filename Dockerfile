FROM registry.docker-cn.com/library/centos:latest

RUN useradd admin
#USER admin
WORKDIR /home/admin

ADD CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
ADD screenrc /home/admin/.screenrc
ADD bashrc /home/admin/.bashrc
Add vimrc /home/admin/.vimrc
ADD clean.sh /home/admin/.clean.sh
ADD gitconfig /home/admin/.gitconfig
ADD start.sh /home/admin/.start.sh

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
