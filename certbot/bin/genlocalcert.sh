#!/bin/bash
# Generates self-signed certs for sites

for domain in $(ls /var/www); do
	if [ ! -e /etc/letsencrypt/live/$domain/privkey.pem ]; then
			openssl req -x509 -nodes -newkey rsa:4096 -days 1 \
				-keyout "/etc/letsencrypt/live/$domain/privkey.pem" \
				-out "/etc/letsencrypt/live/$domain/fullchain.pem" \
				-subj '/CN=localhost'
	fi;
done;
