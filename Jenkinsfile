pipeline {
    agent {
        docker { image 'maven:3.8.3-openjdk-17' }
    }
    stages{
        stage('Compile'){
            steps{
                script {
                    sh "mvn clean compile"
                }
            }
        }
        stage('test'){
            steps{
                script{
                    sh "mvn test"
                }
            }
        }

        stage('package'){
            steps{
                script{
                    sh "mvn package"
                }
            }
        }
    }
}
