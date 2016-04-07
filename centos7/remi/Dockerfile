FROM centos:7

MAINTAINER DQNEO

RUN yum -y update; yum clean all;
RUN yum -y install epel-release; yum clean all

RUN rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# install php self
RUN yum -y install --enablerepo=remi-php56 php php-mbstring; yum clean all;

# basical extensions
RUN yum -y install --enablerepo=remi-php56 \
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
#RUN yum -y install --enablerepo=remi-php56 ImageMagick ImageMagick-devel ; yum clean all;

# imagick
#RUN yum -y install --enablerepo=remi-php56 php-pecl-imagick

# gd
#RUN yum -y install --enablerepo=remi-php56 php-gd

CMD ["php", "-v"]
