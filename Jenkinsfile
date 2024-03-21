pipeline {
    agent {
        docker { image 'maven:3.8.1-adoptopenjdk-11' }
    }
    stages{
        stage('Compile'){
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