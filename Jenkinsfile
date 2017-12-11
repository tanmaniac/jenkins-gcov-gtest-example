pipeline {
  agent { dockerfile true }

  stages {
    stage("Clean Old Build") {
      steps {
        sh "rm -rf build"
      }
    }
    stage("Build") {
      steps {
        sh "mkdir build"
        sh "cd build"
        sh "pwd"
        sh "ls"
        sh "cmake .. && make"
      }
    }
  }
}