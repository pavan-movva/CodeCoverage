pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout source code from Git
                git branch: 'main', url: 'https://github.com/Balajiavinash/jenkinsDemo.git'
            }
        }
        stage('Build') {
            steps {
                // Build Docker image
                script {
                    def dockerfilePath = "${WORKSPACE}/Dockerfile" // Path to Dockerfile in Jenkins workspace
                    docker.build("your-image-name", "--file ${dockerfilePath} .")
                }
            }
        }
        stage('Test') {
            steps {
                // Run tests inside a Docker container
                script {
                    docker.image('your-image-name').inside {
                        sh 'mvn test' // Example Maven test command
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                // Deploy using Docker
                script {
                    docker.image('your-image-name').inside {
                        sh 'docker run -d -p 8080:8080 your-image-name' // Example deployment command
                    }
                }
            }
        }
    }
}
