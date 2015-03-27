FROM dqneo/base:centos7

MAINTAINER DQNEO

RUN yum -y install git; yum clean all;

WORKDIR /usr/local/src

# install packages to build php-src
RUN yum -y install wget tar make gcc autoconf bison re2c; yum clean all

# install packages to build php extensions
RUN yum -y install libxml2-devel; yum clean all

ENV TAG_NAME POST_PHP7_EREG_MYSQL_REMOVALS
ENV ARCHIVE ${TAG_NAME}.tar.gz

RUN wget https://github.com/php/php-src/archive/${ARCHIVE}

RUN tar xfz ${ARCHIVE} \
 && rm  ${ARCHIVE}

WORKDIR /usr/local/src/php-src-${TAG_NAME}

RUN ./buildconf

RUN ./configure --prefix=/opt/php \
  --enable-mbstring

RUN make && make install

ENV PATH /opt/php/bin:${PATH}

CMD ["php", "-v"]
