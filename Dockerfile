FROM rkrahl/centos:7

RUN yum -y install \
    httpd

CMD ["/usr/sbin/httpd",  "-f",  "/etc/httpd/conf/httpd.conf", "-DSSL", "-DFOREGROUND", "-k", "start"]

EXPOSE 80 443
