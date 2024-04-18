pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image
                    docker.build('web', './dockerfiles')
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Run Docker container
                    docker.image('web').run('-p 5050:80 --name webapp')
                }
            }
        }
    }
}

