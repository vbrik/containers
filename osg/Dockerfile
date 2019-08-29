FROM vbrik/centos:7.6.1810

RUN yum install -y yum-plugin-priorities # needed for OSG repos, apparently
RUN rpm -Uvh https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm
RUN yum install -y vo-client voms-clients-cpp \
                    osg-ca-certs cilogon-openid-ca-cert \
                    globus-gass-copy-progs \
                    gfal2-util gfal2-plugin-gridftp gfal2-plugin-file \
                    openssl htop
RUN yum update -y

RUN updatedb
ENTRYPOINT ["/bin/bash", "-l"]
