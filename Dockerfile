FROM centos:centos7

MAINTAINER DQNEO

RUN yum -y update; yum clean all
RUN yum -y install php; yum clean all

CMD ["php", "-v"]

