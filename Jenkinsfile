pipeline {
  agent any
  stages {
    stage("Running Tox tests"){
      steps{
        sh 'make test'
      }
    }
    stage("Building artifact"){
      steps{
        sh 'make dist'
        archiveArtifacts artifacts: 'dist/*.tar.gz', excludes: null
      }
    }
    stage("Collecting test reports"){
      steps{
        junit 'reports/*.xml'
      }
    }
    stage('Clean up') {
      steps{
        sh 'make clean'
      }
    }
  }
}
