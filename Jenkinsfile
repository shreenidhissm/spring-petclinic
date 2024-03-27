pipeline {
  agent {
        docker { image 'maven:3.6.3-openjdk-17' }
  }

  stages {
    stage ('Compile') {
      steps {
        sh "maven clean compile"
      }
    }
  }
}
  
