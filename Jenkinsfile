node {
  stage("Prepare Environment")
    checkout scm
    def environment = docker.build "ci-node"

    environment.inside {
      stage("Cleanup Old Builds")
        sh "rm -rf build"
        
      stage("Build")
        sh "mkdir build"
        sh "cd build"
        sh "cmake .."
        sh "make"
    }

  stage("Cleanup")
    deleteDir()
}
