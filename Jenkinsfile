pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build("your-dockerhub-username/prime-numbers:${env.BUILD_NUMBER}")
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        docker.image("your-dockerhub-username/prime-numbers:${env.BUILD_NUMBER}").push()
                    }
                }
            }
        }
    }
}
