FROM dqneo/phpbuild:7.0

RUN cp php.ini-development /opt/php/lib/php.ini
RUN echo "date.timezone=Asia/Tokyo" >> /opt/php/lib/php.ini

RUN yum -y install git

# build imagick extension
WORKDIR /usr/local/src
RUN yum -y install ImageMagick ImageMagick-devel
RUN git clone -b phpseven --depth 1 https://github.com/mkoppanen/imagick.git \
 && cd imagick \
 && phpize \
 && ./configure \
 && make \
 && make install

RUN echo "extension=imagick.so" >> /opt/php/lib/php.ini

# build memcached extension
WORKDIR /usr/local/src
RUN yum -y install libmemcached-devel
RUN git clone -b php7 --depth 1 https://github.com/php-memcached-dev/php-memcached \
  && cd php-memcached \
  && phpize \
  && ./configure \
  && make \
  && make install
RUN echo "extension=memcached.so" >> /opt/php/lib/php.ini

# pecl memcache
# RUN pecl install memcache
# RUN echo "extension=memcache.so" >> /opt/php/lib/php.ini

RUN yum -y install nano

# prove
RUN yum -y install perl-Test-Harness
