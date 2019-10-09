pipeline {
  agent any 
  stages {
    stage("Test Dockerfile") {
      steps {
        sh "tidy -q -e *.html"
      }
    }
    stage("Build Dockerfile") {
      steps {
        sh "chmod +x ./build_docker.sh"
        sh "./build_docker.sh"
      }
    }
    stage("Upload Dockerfile") {
      steps {
        withCredentials([string(credentialsId: 'docker_password', variable: 'var_docker_password')]) {
          sh "echo $var_docker_password | base64"
          sh "chmod +x ./upload_docker.sh"
          sh "./upload_docker.sh"
        }
      }
    }
    stage("Deploy to Infrastructure") {
      steps {
        sh "kubectl delete replicationcontroller nginx"
        sh "kubectl create -f nginx.yaml"
      }
    }
}
}
