#!/usr/bin/env bash

cp /vagrant/index.html /var/www/.
cp /vagrant/hello.cgi /usr/lib/cgi-bin/.

chown root:root /var/www/index.html
chown root:root /usr/local/cgi-bin/hello.cgi