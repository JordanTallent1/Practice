pipeline {
  agent any 
  stages {
    stage("Build") {
      steps {
        sh "tidy -q -e *.html"
      }
    }
    stage("Upload to AWS") {
        steps {
          withAWS(region:'us-east-1',credentials:'Jenkins') {
            s3Upload(pathStyleAccessEnabled:true, payloadSigningEnabled: true, file:'essential.html', bucket:'c3pipelines0210')
          }
    }
  }
}
}
