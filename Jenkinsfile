pipeline {
    agent any

    stages {
        stage('Code Fetch') {
            steps {
                echo 'Code Fetch from GitHub'
                git url:'https://github.com/pleomax16/web-design-course-restaurant.git', branch: 'master'
            }
        }
        stage('Build Docker') {
            steps {
              
                sh 'docker build -t hiratest .'                
            }
        }
        stage('Deploy Code') {
            steps {
                echo 'Deploy on container'
                sh 'docker run -d -p 80:80 hiratest'
            }
        }  
    }
}
