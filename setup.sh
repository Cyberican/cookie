#!/bin/bash

_files=( 'cookie' )

apt-get -y update
apt-get -y install make sudo

for f in ${_files[@]}
do
	chmod 755 $f
done

if [ -d ".cookiecutters" ];
then
	cp -a -v .cookiecutters /root
fi
