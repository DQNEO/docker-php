FROM dqneo/php:centos7remi

# install php self
RUN yum -y install --enablerepo=remi-php56 php; yum clean all;

# basical extensions
RUN yum -y install --enablerepo=remi-php56 \
    php-mbstring \
    php-devel \
    php-pdo \
    php-mcrypt \
    php-opcache \
    ; yum clean all;


#  extensions middlewares
RUN yum -y install --enablerepo=remi-php56 \
    php-process \
    php-intl \
    php-fpm \
    php-pgsql \
    php-pecl-mongo \
    php-pecl-memcache \
    php-pecl-memcached \
    ; yum clean all;

# extensions for manipulation
RUN yum -y install --enablerepo=remi-php56 ImageMagick ImageMagick-devel ; yum clean all;

# imagick
RUN yum -y install --enablerepo=remi-php56 php-pecl-imagick

# gd
RUN yum -y install --enablerepo=remi-php56 php-gd

CMD ["php", "-v"]
