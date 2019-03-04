FROM centos:7.6.1810

RUN rm /anaconda-post.log /root/anaconda-ks.cfg
RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf
RUN rm /etc/yum.repos.d/*
ADD repos.repo /etc/yum.repos.d/
ADD bashrc /root/.bashrc
RUN yum install -y bind-utils iputils net-tools nmap socat wget \
                    bash-completion-extras less mlocate psmisc vim
RUN yum update -y
