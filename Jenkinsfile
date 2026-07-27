pipeline {
    agent { 
        label 'docker' 
    }
    
    stages {
        stage('1. Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Zyadm9612/Simple-Web-App-CI'
            }
        }
        
        stage('2. Build and Deploy') {
            steps {
                script {
                    sh 'docker build -t zyad/simple-html-app .'
                    sh 'docker stop html-web-server || true'
                    sh 'docker rm html-web-server || true'
                    sh 'docker run -d -p 80:80 --name html-web-server zyad/simple-html-app'
                }
            }
        }
    }
}
