pipeline {
    agent none
    stages{
        stage('Compile'){
            agent{
                docker {image 'maven:3.8.1-adoptopenjdk-11'}
            }
            steps{
                script {
                    sh "mvn clean compile"
                }
            steps{
                script{
                    sh "mvn test"
                }
            }
            steps{
                script{
                    sh "mvn package"
                }
            }

            }
        }
    }
}