node {
  stage "Prepare environment"
    checkout scm
    def environment = docker.build "ci-node"

    environment.inside {
      stage("Build")
        sh "mkdir build"
        sh "cd build"
        sh "cmake .."
        sh "make"
    }

  stage("Cleanup")
    deleteDir()
}
