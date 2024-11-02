pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                echo 'Checking out code from Github'
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Atul2401/devops-go-project.git']])
                echo "Checkout DONE below is the output from git log command"
                git log
            }
        }
    }
}
