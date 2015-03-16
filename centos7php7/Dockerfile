FROM centos:centos7

MAINTAINER DQNEO

RUN yum -y update; yum clean all

# install packages to build php itslef
RUN yum -y install wget tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel; yum clean all

WORKDIR /tmp

RUN wget https://github.com/php/php-src/archive/POST_PHP7_EREG_MYSQL_REMOVALS.tar.gz  -O php7.tar.gz
RUN tar xfz php7.tar.gz
RUN mv php-src-POST_PHP7_EREG_MYSQL_REMOVALS php-src
WORKDIR /tmp/php-src

RUN ./buildconf
RUN ./configure

#RUN make && make install

CMD ["php", "-v"]

