#!/bin/bash
echo "Deployment Started"
ssh jenkins@52.175.250.60 'sh /home/jenkins/apache-tomcat-8.5.59/bin/shutdown.sh'
ssh jenkins@52.175.250.60 'mkdir -p /home/jenkins/apache-tomcat-8.5.59/webapps/backup'
ssh jenkins@52.175.250.60 'cp /home/jenkins/apache-tomcat-8.5.59/webapps/hms.war /home/jenkins/apache-tomcat-8.5.59/webapps/backup'
scp target/hms.war jenkins@52.175.250.60:/home/jenkins/apache-tomcat-8.5.59/webapps
ssh jenkins@52.175.250.60 'sh /home/jenkins/apache-tomcat-8.5.59/bin/startup.sh'
echo "Deployment has been completed successfully"
