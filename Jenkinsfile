pipeline {
    agent {
        docker {
            image "maven:3.9.6"
        }
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