pipeline {
    agent any
    tools {
        jdk 'jdk11'
        maven 'maven-3'
    }
    environment {
        SCANNER_HOME=tool 'sonar-scanner'
    }
    stages {
        stage('complie') {
            steps {
                sh 'mvn compile'
            }
        }
        stage('test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Sonarquebe analysis') {
            steps {
                withSonarQubeEnv('sonarserver') {
                    sh '''$SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Petclinic \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=Petclinic '''
                }
            }
        }
        stage('Qulity gate') {
            steps {
                script {
                    waitForQualityGate abortPipeline: false, credentialsId: 'sonar-token'
                }
                    
            }
        }
        stage('Docker build') {
            steps {
              script {
                   withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
                             sh "docker build -t image1 ."
                             sh "docker tag image1 shreenidhism/pet-clinic123:latest"
                   
                    }
              }
            }
        }
        
        stage('Docker publish') {
            steps {
              script {
                   withDockerRegistry(credentialsId: 'docker-cred', toolName: 'docker') {
                             sh "docker push shreenidhism/pet-clinic123:latest"
                   
                    }
              }
            }
        }
    }
 }
  
