pipeline {
  agent any
  stages {
    stage('Running Tox tests') {
      steps {
        sh '''python3 -m venv .env
. .env/bin/activate
make test'''
      }
    }
    stage('Building artifact') {
      steps {
        sh '''python3 -m venv .env
. .env/bin/activate
make dist'''
        archiveArtifacts 'dist/*.tar.gz'
      }
    }
    stage('Collecting test reports') {
      steps {
        junit 'reports/*.xml'
      }
    }
    stage('Clean up') {
      steps {
        sh 'make clean'
      }
    }
  }
}