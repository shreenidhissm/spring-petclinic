pipeline {
    agent {
        docker { image 'maven:3.6.3-openjdk-17' }
    }
    
    envirnoment{
        SCANNER_HOME= tool 'sonar-scanner-petclinc'
    }
    stages{
        stage('Compile'){
            steps{
               sh "mvn clean compile"
            }
        }
        stage('Sonarqube Analysis'){
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner-petclinc -Dsonar.projectName=Petclinc \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=Petclinc '''
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
        stage('Docker build and publish'){
            steps{
                script{
                    withDockerRegistry(credentialsId: 'docker_cred', url: 'https://hub.docker.com/repository/docker/avinashbasoorbs')
                        sh "docker build -t petclinc ."
                        sh "docker tag avinashbasoorbs/petclinic:latest"
                        sh "docker push avinashbasoorbs/petclinic:latest"
                }
            }
        }
        stage('Trivy image scanner'){
            steps{
               sh "trivy image avinashbasoorbs/petclinic:latest"
            }
        }
    }
}
