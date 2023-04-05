pipeline {
  agent {
    kubernetes {
      cloud 'kubernetes'
      defaultContainer 'maven'
      inheritFrom 'agent-0'
      yaml '''
        apiVersion: v1
        kind: Pod
        spec:
          containers:
            - name: maven
              image: maven:3.8.1-jdk-8
              command:
                - sleep
              args:
                - 99d
    '''
    }
  }

  stages {
    stage('Build and test') {
      steps {
        sh 'echo test'
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
