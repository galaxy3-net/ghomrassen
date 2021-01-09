#!/usr/bin/env bash


cp /vagrant/hello.cgi /usr/lib/cgi-bin/.
chown root:root /usr/lib/cgi-bin/hello.cgi
chmod 0640 /usr/lib/cgi-bin/hello.cgi

mkdir -p /var/www/g3
cp /vagrant/index.html /var/www/g3/
chown -R root:root /var/www/g3/

cat <<__EOD__ >> /etc/apache2/sites-enabled/000-default

<VirtualHost 10.55.56.56:443>
		DocumentRoot "/var/www/g3/"
		ServerName shellshock.galaxy3.net
		DirectoryIndex index.html

		SSLEngine On
		SSLCertificateFile 		/etc/apache2/ssl/apache.crt
		SSLCertificateKeyFile 	/etc/apache2/ssl/apache.key
    ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/
</VirtualHost>
<VirtualHost 10.55.56.56:80>
    DocumentRoot "/var/www/g3/"
    ServerName shellshock.galaxy3.net
    DirectoryIndex index.html
    ScriptAlias /cgi-bin/ /usr/lib/cgi-bin/
</VirtualHost>
__EOD__

apachectl restart
