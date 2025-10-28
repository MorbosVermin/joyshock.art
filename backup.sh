#!/bin/bash
echo -n "Backing up database for $1..."
sudo docker compose exec -it db mysqldump -u root --add-drop-table $1 > /backup/$1.sql
echo "done."

echo -n "Backing up wordpress files for $1..."
cd www/$1 && \
	tar zcf ../backup/$1.www.tgz *
echo "done."
