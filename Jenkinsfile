pipeline {
  agent { dockerfile true }

  stages {
    stage("Fetch Submodules"){
      steps {
        sh "git submodule update --init --recursive"
      }
    }
    stage("Build") {
      steps {
        sh "/bin/bash build.sh"
      }
    }
  }
}