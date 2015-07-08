FROM dqneo/phpbuild:5.6

RUN cp php.ini-development /opt/php/lib/php.ini

RUN yum -y install ImageMagick ImageMagick-devel

RUN pecl install imagick

RUN echo "extension=imagick.so" >> /opt/php/lib/php.ini


