pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('build') {
            steps {
               echo 'build stage excuted'
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
