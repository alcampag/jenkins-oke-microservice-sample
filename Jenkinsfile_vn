pipeline {
  agent {
    kubernetes {
      cloud 'kubernetes'
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
