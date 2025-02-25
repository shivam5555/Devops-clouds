pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "sanjishiva5/fibonacci-api:latest"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/shivam5555/Devops-clouds.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''#!/bin/bash
                echo "🛠️ Building Docker Image..."
                docker build -t ${DOCKER_IMAGE} .
                '''
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-credentials', url: '']) {
                    sh '''#!/bin/bash
                    echo "🚀 Pushing Docker Image to Docker Hub..."
                    docker push ${DOCKER_IMAGE}
                    '''
                }
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''#!/bin/bash
                echo "🔄 Stopping existing container..."
                docker stop fibonacci-api || true
                docker rm fibonacci-api || true

                echo "📥 Pulling latest Docker Image..."
                docker pull ${DOCKER_IMAGE}

                echo "🚀 Running Fibonacci API Container..."
                docker run -d -p 5000:5000 --name fibonacci-api ${DOCKER_IMAGE}

                echo "✅ Deployment Complete!"
                docker ps
                '''
            }
        }
    }

    post {
        success {
            echo "✅ Deployment Successful! Fibonacci API is running on port 5000."
        }
        failure {
            echo "❌ Deployment Failed! Check logs for details."
        }
    }
}

