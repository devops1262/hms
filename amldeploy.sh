#!/bin/bash
echo "Deployment Started"
ssh jenkins@168.61.50.213 'sh /home/jenkins/apache-tomcat-8.5.60/bin/shutdown.sh'
ssh jenkins@168.61.50.213 'mkdir -p /home/jenkins/apache-tomcat-8.5.60/webapps/backup'
ssh jenkins@168.61.50.213 'cp /home/jenkins/apache-tomcat-8.5.60/webapps/hms.war /home/jenkins/apache-tomcat-8.5.60/webapps/backup'
mv target/hms*.war target/hms.war
scp target/hms.war jenkins@168.61.50.213:/home/jenkins/apache-tomcat-8.5.60/webapps
ssh jenkins@168.61.50.213 'sh /home/jenkins/apache-tomcat-8.5.60/bin/startup.sh'
echo "Deployment has been completed successfully"
