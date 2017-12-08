pipeline {
  agent {
    docker {
      image 'ubuntu:xenial'
    }
  }

  stages {
    stage('Setup') {
      steps {
        sh 'sudo apt-get install cmake'
      }
    }
    stage('Build') {
      steps {
        sh 'mkdir build && cd build'
        sh 'cmake ..'
        sh 'make'
      }
    }
  }
}
