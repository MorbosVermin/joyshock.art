#!/bin/bash
echo -n "Downloading latest version of Wordpress..."
curl -q -o updates/wordpress-latest.zip https://wordpress.org/latest.zip
echo "done."

echo -n "Updating wordpress for $1..."
cd updates
ln -s ../www/$1 wordpress
sudo unzip -q wordpress-latest.zip
rm wordpress
echo "done."

echo -n "Restarting $1..."
./restart.sh $1
echo "done."
