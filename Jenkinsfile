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
        sh 'mvn clean verify'
      }
    }
    stage("Build docker image"){
        steps{
            container('docker'){
                sh 'docker build . -t my-image'
            }
        }
    }
  }
}
