FROM rkrahl/opensuse:15.6

RUN zypper --non-interactive refresh

RUN zypper --non-interactive install \
	apache2 \
	apache2-mod_wsgi \
	python311-Flask

CMD ["/usr/sbin/httpd-prefork",  "-f",  "/etc/apache2/httpd.conf", "-DSSL", "-k", "start"]

EXPOSE 80 443
