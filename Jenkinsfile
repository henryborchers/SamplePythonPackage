node {
    checkout scm

    try {
        stage("Running Tox tests"){
            sh 'make test'
        }


        stage("Building artifact"){
            sh 'make build'
        }
    }
    finally {
        stage("Collecting test reports"){
            junit 'reports/*.xml'
        }


        stage('Clean up') {
            sh 'make clean'
        }

    }
}