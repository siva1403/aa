pipeline {
    agent any

    environment {
        S3_BUCKET = 'siva14'
        ARTIFACT_PATH = 'target/*.jar'  // Adjust path if needed
        REGION = 'us-west-2'
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/siva1403/aa.git'  // Replace with your repository URL
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Upload to S3') {
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', credentialsId: 'sivakrishna']]) {
                     sh   'aws s3 cp ${ARTIFACT_PATH} s3://${S3_BUCKET}/builds/${BUILD_NUMBER}/ --region ${REGION}'
                }
            }
        }
    }
}
