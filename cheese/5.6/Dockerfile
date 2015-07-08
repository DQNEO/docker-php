FROM dqneo/phpbuild:5.6

RUN cp php.ini-development /opt/php/lib/php.ini
RUN echo "date.timezone=Asia/Tokyo" >> /opt/php/lib/php.ini

# pecl imagick
RUN yum -y install ImageMagick ImageMagick-devel
RUN pecl install imagick
RUN echo "extension=imagick.so" >> /opt/php/lib/php.ini

# pecl memcache
RUN pecl install memcache
RUN echo "extension=memcache.so" >> /opt/php/lib/php.ini

