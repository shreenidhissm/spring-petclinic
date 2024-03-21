pipeline {
    agent none
    stages{
        stage('Compile'){
            agent{
                docker {image 'maven:3.9.6-jdk-17'}
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