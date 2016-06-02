#! /bin/bash

function lamp(){

	echo "install lamp"
	rm -rf lamp.zip
	yum -y install wget screen unzip
	wget --no-check-certificate -O lamp.zip https://github.com/teddysun/lamp/archive/master.zip
	unzip lamp.zip
	cd lamp-master
	chmod +x *.sh
	screen -S lamp
	./lamp.sh
}

#执行lamp安装
lamp