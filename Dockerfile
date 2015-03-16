FROM centos:centos7

MAINTAINER DQNEO

WORKDIR /tmp

RUN yum -y update; yum clean all
RUN yum -y install wget
RUN wget https://github.com/php/php-src/archive/POST_PHP7_EREG_MYSQL_REMOVALS.tar.gz  -O php7.tar.gz

RUN yum -y install tar
RUN tar xfz php7.tar.gz

CMD ["php", "-v"]

