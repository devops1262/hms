pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('build') {
            steps {
               echo 'build stage excuted'
	       sh 'export M2_HOME=/home/jenkins/apache-maven-3.6.3 && export PATH=$PATH:/home/jenkins/apache-maven-3.6.3/bin && mvn clean compile package'
            }
        }
        stage('depoly') {
            steps {
                echo 'depolyment has been compilited'
                sh 'hostname'
            }
        }
	stage('report') {
            steps {
                echo 'report has been uploaded'
            }
        }   
    }
}
