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
          - name: docker
            image: docker:20.10.22-dind
            tty: true
              '''
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
