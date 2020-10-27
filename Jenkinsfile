pipeline {
    agent any
    triggers {
        pollSCM '* * * * *'
    }
    stages {
        stage('Build') {
            steps {
               echo 'build stage excuted'
	       sh 'export M2_HOME=/home/jenkins/apache-maven-3.6.3 && export PATH=$PATH:/home/jenkins/apache-maven-3.6.3/bin && mvn clean compile package'
            }
        }
        stage('UploadBinary') {
            steps {
                echo 'UpoladBinaryToArtifactory'
                sh 'mv target/hms.war target/hms-$BUILD_NUMBER.war'
		sh 'curl -sSf -H "X-JFrog-Art-Api:AKCp8hyiu16qjRqVr9XGVJJb1id3AD5wyo2cFHkMRSknTivnREpCvKM5wvxUCeYoApVEbiERQ" \
                    -X PUT \
                    -T target/hms-$BUILD_NUMBER.war \
                    "https://anrdevops99.jfrog.io/artifactory/aml/"'
            }
        }
	stage('Deploy') {
            steps {
                echo 'DeployArtifactoryIntoDevEnvernment'
		sh './amldeploy.sh'
            }
        }   
    }
}
