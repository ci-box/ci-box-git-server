#!/bin/sh

# Start lighttpd
lighttpd -f /etc/lighttpd.conf

# start sshd
sh /git-server/start.sh
