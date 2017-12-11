pipeline {
  agent { dockerfile true }

  stages {
    stage("Build") {
      steps {
        sh "/bin/bash build.sh"
      }
    }
  }
}