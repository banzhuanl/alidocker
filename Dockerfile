FROM registry.docker-cn.com/library/centos:latest

RUN mkdir -p /home/admin/wfj/
ADD bashrc /home/admin/.bashrc
WORKDIR /home/admin


RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
