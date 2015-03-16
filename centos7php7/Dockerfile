FROM centos:centos7

MAINTAINER DQNEO

WORKDIR /tmp

RUN yum -y update; yum clean all
RUN yum -y install wget

RUN yum -y install tar

RUN yum -y install make gcc; yum clean all
RUN yum -y install autoconf; yum clean all
RUN yum -y install bison re2c; yum clean all
RUN yum -y install libxml2-devel; yum clean all

RUN wget https://github.com/php/php-src/archive/POST_PHP7_EREG_MYSQL_REMOVALS.tar.gz  -O php7.tar.gz
RUN tar xfz php7.tar.gz
RUN mv php-src-POST_PHP7_EREG_MYSQL_REMOVALS php-src
WORKDIR /tmp/php-src

RUN ./buildconf
RUN ./configure

#RUN make && make install

CMD ["php", "-v"]

