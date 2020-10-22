#!/bin/bash

#Install java

sudo add-apt-repository ppa:webupd8team/java
sudo apt install -y oracle-java8-installer
sudo apt install -y openjdk-8-jre


#Add repository key

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key > key 
sudo apt-key add key


#Add repository

sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

#Update repository

sudo apt update




#Install Jenkins

sudo apt install -y  jenkins

#Start Jenkins

sudo systemctl start jenkins


