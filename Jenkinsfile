pipeline {
  agent any 
  stages {
    stage("Test Dockerfile") {
      steps {
        sh "make install"
      }
    }
    stage("Build Dockerfile") {
      steps {
        sh "build_docker.sh"
      }
    }
    stage("Upload Dockerfile") {
      steps {
        sh "tidy -q -e *.html"
      }
    }
    stage("Upload to AWS") {
        steps {
          withAWS(region:'us-east-1',credentials:'MyCredentials') {
            s3Upload(pathStyleAccessEnabled:true, payloadSigningEnabled: true, file:'essential.html', bucket:'c3pipelines0210')
          }
        }
    }
    stage("Deploy Infrastructure") {
      steps {
        sh "tidy -q -e *.html"
      }
    }
}
}
