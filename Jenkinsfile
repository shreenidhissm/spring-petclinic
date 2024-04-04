pipeline {
    agent any
    tools {
        jdk 'jdk11'
        maven 'maven-3'
    }
    stages {
        stage('checkout') {
            steps {
                git branch: 'branch-1', url: 'https://github.com/avinashbasoor12/spring-petclinic.git'
            }
        }
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
  
