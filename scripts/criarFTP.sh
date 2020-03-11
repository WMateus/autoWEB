#!/bin/bash 

##### FTP #####



usuario=$(echo $1 | cut -d. -f1)

useradd $1 -g $1 -p $(openssl passwd '123') -d /var/www/$1


