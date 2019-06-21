FROM vbrik/centos:7.6.1810

RUN yum install -y yum-plugin-priorities # needed for OSG repos, apparently
RUN rpm -Uvh https://repo.opensciencegrid.org/osg/3.4/osg-3.4-el7-release-latest.rpm
RUN yum install -y globus-gass-copy-progs osg-ca-certs vo-client voms-clients-cpp \
                    gfal2-utils gfal2-plugin-gridftp
RUN yum update -y

RUN updatedb
ENTRYPOINT ["/bin/bash", "-l"]
