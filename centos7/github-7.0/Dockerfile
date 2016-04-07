FROM centos:7

MAINTAINER DQNEO

RUN yum -y update; yum clean all;
RUN yum -y install epel-release; yum clean all

# install packages to build php-src
RUN yum -y install tar make gcc autoconf bison re2c; yum clean all

WORKDIR /usr/local/src

# install packages to build php extensions
RUN yum -y install libxml2-devel libcurl-devel libmcrypt-devel openssl-devel libpng-devel ; yum clean all

ENV PHP_TAG php-7.0.5
RUN curl -sL https://github.com/php/php-src/archive/${PHP_TAG}.tar.gz -o php.tar.gz \
    && tar xfz php.tar.gz \
    && rm php.tar.gz

WORKDIR /usr/local/src/php-src-${PHP_TAG}

RUN ./buildconf --force \
 && ./configure --prefix=/opt/php \
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
--with-mysqli=mysqlnd \
--with-pdo-mysql=mysqlnd \
--enable-json

RUN make && make install && make clean

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
