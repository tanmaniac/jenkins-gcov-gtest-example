node {
  stage("Prepare Environment")
    checkout scm
    def environment = docker.build("ci-node:${env.BUILD_ID}")

    environment.inside {
      stage("Cleanup Old Builds")
        sh "rm -rf build"

      stage("Set Up Build")
        sh "mkdir build && cd build"

      stage("Build")
        sh "cmake .. && make"
    }

  stage("Cleanup")
    deleteDir()
}
