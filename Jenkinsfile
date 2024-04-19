pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image
                    dockerImage = docker.build('web')
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run Docker container
                    dockerImage.run('-p 5050:80 --name webapp')
                }
            }
        }
    }
}
