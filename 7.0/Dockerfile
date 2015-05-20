# https://github.com/DQNEO/docker-base/tree/master/centos7
FROM dqneo/base:centos7

MAINTAINER DQNEO

# install packages to build php-src
RUN yum -y install wget tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel; yum clean all

WORKDIR /usr/local/src

RUN yum -y install git; yum clean all
RUN git clone --depth 1 https://github.com/php/php-src.git

WORKDIR /usr/local/src/php-src
RUN ./buildconf

RUN ./configure --prefix=/opt/php \
  --enable-mbstring

RUN make && make install && make clean

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
