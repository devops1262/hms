pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('SCM') {
            steps {
                git branch: 'master', credentialsId: 'aml-github', url: 'https://github.com/devops1262/hms.git'
            }
        }
        stage('Build') {
            steps {
                echo 'BUILD'
                sh 'hostname'
				echo '*****************'
            }
        }
    }
}
