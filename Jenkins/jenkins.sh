#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install fontconfig git default-jre -y  
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
systemctl is-active jenkins

============================================

 - sudo chmod u+x jenkins.sh
 - sudo ./jenkins.sh

 - install docker commands also in jenkins vm  --> from the official page  or from  docker scripts 
 
 - sudo docker chmod 666 /var/run/docker.sock

 - open browser enter publicip: 8080   

  -  sudo cat /var/lib/jenkins/secrets/initialAdminPassword   --> for password 
  

