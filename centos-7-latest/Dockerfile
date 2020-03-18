# 7.7.1908 is the latest centos 7 at the time of writing
FROM centos:7.7.1908

RUN sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf
RUN rm /etc/yum.repos.d/*
ADD repos.repo /etc/yum.repos.d/

# *Do* install man pages
RUN sed -i '/tsflags=nodocs/d' /etc/yum.conf

RUN yum update -y
RUN yum install -y bash-completion-extras bind-utils file git iputils less \
                    man-db mlocate net-tools nmap psmisc screen socat \
                    tree vim wget
RUN yum clean all

RUN rm /anaconda-post.log /root/anaconda-ks.cfg
ADD bashrc /root/.bashrc
ADD ps1.sh /etc/profile.d/
ADD inputrc /etc/inputrc

RUN updatedb

WORKDIR /root
ENTRYPOINT ["/bin/bash", "-l"]
