pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'ci-cd-jenkins-20250217-015256', url: 'https://github.com/shivam5555/Devops-Clouds.git'
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

