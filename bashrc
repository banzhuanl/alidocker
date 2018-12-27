# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias vi='vim'
alias docker='sudo docker -H 0.0.0.0:4243'
alias c='sh /home/admin/.clean.sh'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

export PS1='\n\e[1;37m[\e[m\e[1;32m\u\e[m\e[1;33m@docker_your_name\e[m \e[4m`pwd`\e[m\e[1;37m]\e[m\e[1;36m\e[m\n\$'
export EDITOR=vim
export HOME=/home/admin
export PATH=$PATH:/home/tops/bin

