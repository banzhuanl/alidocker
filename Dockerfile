FROM centos:latest

RUN mkdir -p /home/admin/wfj
USER admin
WORKDIR /home/admin

RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
