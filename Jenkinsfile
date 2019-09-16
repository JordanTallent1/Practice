pipeline {
  agent any 
  stages {
    stage("Build") {
      steps {
        sh "tidy -q -e *.html"
      }
    }
  }
}
