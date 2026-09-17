pipeline {

    agent any

    environment {
        TOMCAT_URL = 'http://13.206.89.87:8080'
        APP_NAME = 'jenkins-tomcat-app'
    }

    stages {

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Verify WAR') {
            steps {
                sh 'ls -lh target/*.war'
            }
        }

        stage('Deploy to Tomcat') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'tomcat-credentials',
                        usernameVariable: 'TOMCAT_USER',
                        passwordVariable: 'TOMCAT_PASSWORD'
                    )
                ]) {

                    sh '''
                        curl --fail \
                        -u "$TOMCAT_USER:$TOMCAT_PASSWORD" \
                        --upload-file target/jenkins-tomcat-app-1.0.war \
                        "$TOMCAT_URL/manager/text/deploy?path=/jenkins-tomcat-app&update=true"
                    '''
                }
            }
        }
    }

    post {
        success {
            echo 'Build and deployment successful!'
        }

        failure {
            echo 'Build or deployment failed!'
        }
    }
}
