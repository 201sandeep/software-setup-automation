#!/bin/bash

# We are using Tomcat 8 in the setup below are the instructions to setup tomcat

  function Hello(){
 add-apt-repository ppa:vbernat/haproxy-1.5
 apt-get update
 apt-get install haproxy
 service tomcat restart

}
 
 quit (){
 exit
 }
Hello
quit 

proxy --version # for version check
