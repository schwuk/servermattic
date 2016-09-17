#!/bin/bash

curl https://wordpress.org/latest.tar.gz -o /tmp/wordpress.tar.gz
if [ ! -e /var/www/ ]; then
	mkdir /var/www
fi
tar -xzf /tmp/wordpress.tar.gz -C /var/www
rm /tmp/wordpress.tar.gz
service nginx restart
