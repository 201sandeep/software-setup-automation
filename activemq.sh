#!/bin/bash

 activemq (){
cd /disk2/
wget https://archive.apache.org/dist/activemq/5.14.0/apache-activemq-5.14.0-bin.tar.gz
        tar -xvf apache-activemq-5.14.0-bin.tar.gz
	mv apache-activemq-5.14.0 activemq
    	sudo cp activemq/bin/env /etc/default/activemq
   	sudo chown root:root /etc/default/activemq
   	vim /etc/default/activemq 
        useradd activemq
   	sudo cp /disk2/activemq/bin/activemq /etc/init.d
   	sudo chown activemq:activemq /etc/init.d/activemq
    	sudo service activemq start
}
  quit (){
exit
}


activemq
activemq --version
quit
