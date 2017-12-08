pipeline {
  agent {
    docker {
      image 'ubuntu:xenial'
    }
  }

  stages {
    stage('Setup') {
      steps {
        sudo apt-get install cmake
      }
    }
    stage('Build') {
      steps {
        mkdir build && cd build
        cmake ..
        make
      }
    }
  }
}
