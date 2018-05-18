FROM centos:7.3.1611

MAINTAINER lyu <lvds8108@163.com>

RUN yum install epel-release.noarch -y

RUN yum install wget -y

RUN yum -y install pdns pdns-backend-mysql

RUN yum install httpd php php-devel php-gd php-imap php-ldap php-mysql php-odbc php-pear php-xml php-xmlrpc php-mbstring php-mcrypt php-mhash gettext -y

RUN yum -y install php-pear-DB php-pear-MDB2-Driver-mysql

WORKDIR /var/www/html/

RUN wget http://downloads.sourceforge.net/project/poweradmin/poweradmin-2.1.7.tgz

RUN tar xfv poweradmin-2.1.7.tgz

RUN mv poweradmin-2.1.7 poweradmin

RUN cp /var/www/html/poweradmin/install/htaccess.dist .htaccess

RUN rm -fr /var/www/html/poweradmin/install/

WORKDIR /

#修改apache配置文件
RUN sed -i 's/#ServerName www.example.com:80/ServerName localhost:80/g' /etc/httpd/conf/httpd.conf
#启动apache服务
RUN /usr/sbin/httpd

ADD pdns.conf /etc/pdns/pdns.conf

ADD config.inc.php /var/www/html/poweradmin/inc/config.inc.php

ADD run.sh /usr/local/sbin/run.sh

RUN chmod 755 /usr/local/sbin/run.sh
#开放80端口
EXPOSE 53 80

CMD ["/usr/local/sbin/run.sh"]