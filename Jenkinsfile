pipeline {
  agent any
  stages {
    stage("Running Tox tests"){
      step{
        sh 'make test'
      }
    }

    stage("Building artifact"){
      step{
        sh 'make dist'
        archiveArtifacts artifacts: 'dist/*.tar.gz', excludes: null
      }

    }
    stage("Collecting test reports"){
      step{
        junit 'reports/*.xml'
      }
    }


    stage('Clean up') {
      step{
        sh 'make clean'

      }
    }
  }
}
