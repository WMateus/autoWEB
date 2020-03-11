#!/bin/bash

##   script para criar site	##

site=$1
arquivo=$2

echo " 
<VirtualHost *:80>
ServerName www.$1
DocumentRoot /var/www/$2
</VirtualHost>" > /etc/apache2/sites-available/$2.conf

a2ensite $2.conf

#reload apache2

mkdir /var/www/$2

echo "
<meta charset=\"utf-8\"/>
<html>
	<head>
	<title> janela 1 </title>
	</head>
	<body>
		<center>
		<h1><front color=\"#4F4F4F\">
		
		site em construção do dominio $2
		
		</h1>
		</center>
	</body>
	</html>" >> /var/www/$2/index.html


systemctl restart apache2








