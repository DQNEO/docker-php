# https://github.com/DQNEO/docker-base/tree/master/centos7
FROM dqneo/base:centos7

MAINTAINER DQNEO

# install packages to build php-src
RUN yum -y install tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel libcurl-devel libmcrypt-devel openssl-devel libpng-devel ; yum clean all

WORKDIR /usr/local/src
ENV PHP_VER 5.6.10

RUN curl --silent --location http://jp2.php.net/get/php-${PHP_VER}.tar.gz/from/this/mirror -o php-${PHP_VER}.tar.gz \
  && tar xfz php-${PHP_VER}.tar.gz \
  && rm php-${PHP_VER}.tar.gz

WORKDIR /usr/local/src/php-${PHP_VER}

RUN ./configure --prefix=/opt/php \
--enable-cli \
--enable-mbstring \
--enable-xml \
--enable-zip \
--enable-fpm \
--enable-ftp \
--enable-exif \
--enable-fileinfo \
--enable-pcntl \
--enable-pdo \
--with-curl \
--with-gd \
--with-curl \
--with-openssl \
--with-mcrypt \
--with-zlib  \
--enable-json

RUN make && make install && make clean

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
