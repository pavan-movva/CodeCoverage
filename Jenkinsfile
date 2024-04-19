pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                script {
                    def dockerfilePath = "${WORKSPACE}/Dockerfile"
                    def imageName = "your-image-name"
                    docker.build(imageName, "-f ${dockerfilePath} .")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    def containerName = "your-container-name"
                    docker.image("your-image-name").run("-d -p 8080:80 --name ${containerName}")
                }
            }
        }
    }
}
