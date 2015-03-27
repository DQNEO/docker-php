FROM dqneo/base:centos7

MAINTAINER DQNEO

RUN yum -y install git; yum clean all;

WORKDIR /usr/local/src

# install packages to build php-src
RUN yum -y install wget tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel; yum clean all

RUN git clone --depth 1 https://github.com/php/php-src.git

WORKDIR /usr/local/src/php-src

RUN git pull --ff-only
RUN ./buildconf
RUN ./configure --prefix=/opt/php \
   --enable-mbstring

RUN make && make install

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
