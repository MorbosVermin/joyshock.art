#!/bin/bash
# Renews certificates for sites.

for domain in $(ls /var/www); do
	certonly --webroot --webroot /var/www/$domain \
		--email $CERTBOT_EMAIL \
		--agree-tos --no-eff-email --staging \
		-d $domain \
		-d www.$domain;
done
