FROM dqneo/php:centos7remi

# install php self
RUN yum -y install --enablerepo=remi-php56 php php-mbstring; yum clean all;

CMD ["php", "-v"]
