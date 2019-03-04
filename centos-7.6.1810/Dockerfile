FROM centos:7.6.1810

RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf
RUN rm /etc/yum.repos.d/*
ADD repos.repo /etc/yum.repos.d/

RUN yum install -y bash-completion-extras bind-utils iputils less \
                    mlocate net-tools nmap psmisc screen socat tree \
                    vim wget
RUN yum update -y
RUN yum clean all

RUN rm /anaconda-post.log /root/anaconda-ks.cfg
ADD bashrc /root/.bashrc
ADD ps1.sh /etc/profile.d/
ADD inputrc /etc/inputrc

RUN updatedb

ENTRYPOINT ["/bin/bash", "-l"]
