FROM dqneo/base:centos7

MAINTAINER DQNEO

RUN yum -y install git; yum clean all;

# install packages to build php itslef
RUN yum -y install wget tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel; yum clean all

WORKDIR /usr/local/src

RUN git clone https://github.com/php/php-src.git

# RUN tar xfz php7.tar.gz
# RUN mv php-src-POST_PHP7_EREG_MYSQL_REMOVALS php-src
# WORKDIR /tmp/php-src

# RUN ./buildconf
# RUN ./configure

# #RUN make && make install

# CMD ["php", "-v"]
