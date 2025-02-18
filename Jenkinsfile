pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'ci-cd-jenkins', url: 'https://github.com/shivam5555/Devops-Cloud.git'
            }
        }

        stage('Build') {
            steps {
                sh 'echo "Building the application..."'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running tests..."'
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo "Deploying application..."'
            }
        }
    }
}

