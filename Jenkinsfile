pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'my-docker-image'
        GITHUB_REPO_URL = 'https://github.com/Balajiavinash/jenkinsDemo.git'
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: "${env.GITHUB_REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Specify the path to the Dockerfile relative to the repository root
                    docker.build("${env.DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER}", "-f path/to/Dockerfile .")
                }
            }
        }

        stage('Push Docker Image to Registry') {
            steps {
                script {
                    docker.withRegistry('https://dockerhub.com', 'b9adb166-3990-4c3d-bf92-6d37235e418b') {
                        docker.image("${env.DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER}").push('latest')
                    }
                }
            }
        }

        stage('Deploy Docker Container') {
            steps {
                script {
                    docker.run("${env.DOCKER_IMAGE_NAME}:${env.BUILD_NUMBER}", '--name my-container -d -p 8080:8080')
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
