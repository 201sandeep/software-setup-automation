#!/bin/bash

 tomcat (){
 cd /disk2/
 wget http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.45/bin/apache-tomcat-8.0.45.tar.gz
 tar -xvf apache-tomcat-8.0.45.tar.gz  
 mv apache-tomcat-8.0.45 tomcat
 useradd -m -d /home/tomcat tomcat
 sudo mkdir /home/tomcat 
 sudo chown -R tomcat:tomcat /home/tomcat/
 sudo touch /home/tomcat/iconnect_services.properties 
 sudo mkdir /disk2/applogs
 sudo chown -R tomcat:tomcat /disk2/applogs/
 sudo chown -R tomcat:tomcat tomcat/*
 cat catlina.txt >> tomcat/bin/catalina.sh #{file copy to qa server }
 cat context.txt >> tomcat/bin/context.xml  #{file copy to qa server and edit mysql host,username,password or database}
 cd tomcat/bin/
 sudo cat /home/vagrant/tomcat.conf  >>  /etc/init.d/tomcat #{file copy to qa server of config file
 sudo cd /etc/init.d/
 sudo chown tomcat:tomcat /etc/init.d/tomcat 
 sudo chmod +x tomcat 
 sudo service tomcat start
}
tomcat
 
sh /disk2/tomcat/bin/version.sh # for  check version of tomcat

