pipeline {
  agent any
  stages {
    stage('Running Tox tests') {
      steps {
        sh '''echo "Doing the testing thing."
python3 -m venv .env
. .env/bin/activate
make test'''
      }
    }
    stage('Building artifact') {
      steps {
        sh 'make dist'
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