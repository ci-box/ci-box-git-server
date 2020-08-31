ARG version=latest
FROM jkarlos/git-server-docker:${version}

RUN apk add --no-cache lighttpd git-gitweb perl-cgi

COPY ./lighttpd.conf /etc/lighttpd.conf
COPY ./entrypoint.sh /root/entrypoint.sh
COPY ./gitweb.conf /etc/gitweb.conf

CMD ["sh", "/root/entrypoint.sh"]
