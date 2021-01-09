#!/usr/bin/env bash


cp /vagrant/hello.cgi /usr/lib/cgi-bin/.

chown root:root /usr/lib/cgi-bin/hello.cgi

mkdir -p /var/www/shellshock.galaxy3.net/
cp /vagrant/index.html /var/www/shellshock.galaxy3.net/
chown -R root:root /var/www/shellshock.galaxy3.net/

cat <<__EOD__ >> /etc/apache2/sites-available/000_default
</VirtualHost>
<VirtualHost 10.55.56.56:443>
		DocumentRoot /var/www/g3/
		ServerName shellshock.galaxy3.net
		DirectoryIndex index.html

		SSLEngine On
		SSLCertificateFile 		/etc/apache2/ssl/apache.crt
		SSLCertificateKeyFile 	/etc/apache2/ssl/apache.key


</VirtualHost>
__EOD__

apachectl reload
