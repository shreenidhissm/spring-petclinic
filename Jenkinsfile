pipeline {
    agent any
    tools {
        jdk 'jdk11'
        maven 'maven-3'
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
    }
 }
  
