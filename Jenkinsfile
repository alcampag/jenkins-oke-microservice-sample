pipeline {
  agent {
    kubernetes {
      cloud 'kubernetes'
      defaultContainer 'maven'
      inheritFrom 'agent-0'
    }
  }

  stages {
    stage('Build and test') {
      steps {
        sh 'echo test'
      }
    }
  }
}
