#!/bin/bash
if [ ! -d certbot/etc/live/$1 ]; then
	mkdir -p certbot/etc/live/$1
fi

openssl req -x509 -nodes -newkey rsa:4096 -days 30 \
	-keyout certbot/etc/live/$1/privkey.pem \
	-out certbot/etc/live/$1/fullchain.pem \
	-subj "/CN=localhost"
