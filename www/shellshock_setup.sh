#!/usr/bin/env bash

cp ~/index.html /var/www/.
cp ~/hello.cgi /usr/local/cgi-bin/.

chown root:root /var/www/index.html
chown root:root /usr/local/cgi-bin/hello.cgi