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
            securityContext:
                privileged: true
            tty: true
            volumeMounts:
             - mountPath: /var/lib/docker
               name: docker-graph-storage
          volumes:
          - name: docker-graph-storage
            emptyDir: {}
          tolerations:
            - key: "oci.oraclecloud.com/oke-is-preemptible"
              operator: "Exists"
              effect: "PreferNoSchedule"
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
