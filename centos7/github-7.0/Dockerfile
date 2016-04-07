FROM centos:7

MAINTAINER DQNEO

RUN yum -y update; yum clean all;
RUN yum -y install epel-release; yum clean all

# install packages to build php-src
RUN yum -y install tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel libcurl-devel libmcrypt-devel openssl-devel libpng-devel ; yum clean all

WORKDIR /usr/local/src
ENV PHP_VER 7.0.5

RUN curl --silent --location https://github.com/php/php-src/archive/php-${PHP_VER}.tar.gz -o php-${PHP_VER}.tar.gz \
    && tar xfz php-${PHP_VER}.tar.gz \
    && rm php-${PHP_VER}.tar.gz

WORKDIR /usr/local/src/php-src-php-${PHP_VER}

RUN yum -y install postgresql postgresql-devel

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
--with-pgsql \
--enable-json

RUN make && make install && make clean

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
