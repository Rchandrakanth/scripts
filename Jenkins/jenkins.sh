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

  ===============================================================================

         http://18.209.60.226:8080/github-webhhook/   ---> add the jenkins ip:8080 and github/webhook in -> repository settings -> webhooks 

    freestyle project :

            GitHub project
                      Project url :-   add the github project url 

            in source code managemnt :
                git:-  --> add the github project url 

            in triggers : - 
                      GitHub hook trigger for GITScm polling   --> check the box 

            in build steps :- 
                    select execute shell 
                                  - > type pwd,ls etc ... 
                                  
              save  then execute the build 
                    
             


  
  

