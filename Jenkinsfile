pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build Docker image
                    dockerImage = docker.build('web')
                }
            }
        }
        
        stage('Deploy Docker Container') {
            steps {
                script {
                    // Run Docker container
                    dockerImage.run('-p 4040:80 --name 20webapps')
                }
            }
        }
        
        stage('Build Application') {
            steps {
                echo "Building application"
            }
        }
        
        stage('Get Approval') {
            steps {
                input "Approval for deployment"
            }
        }
        
        stage('Deploy Application') {
            steps {
                echo "Deployment Application"
            }
        }
    }
}
