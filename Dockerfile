FROM rkrahl/opensuse:42.3

RUN zypper --non-interactive install \
	apache2

CMD ["/usr/sbin/httpd-prefork",  "-f",  "/etc/apache2/httpd.conf", "-DSSL", "-DFOREGROUND", "-k", "start"]

EXPOSE 80 443
