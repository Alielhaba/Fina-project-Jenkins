pipeline {
    agent { label 'slave' }
    stages {
        stage('build') {
            steps {
            	withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh   """
                        docker login -u $USERNAME -p $PASSWORD
                        docker build -t alielhabal70/final-pro1:latest .
                        docker push alielhabal70/final-pro1:latest
                    """
                 }
            }
        }
        stage('deploy') {
            steps {
                    sh    """
                        kubectl apply -f deplyment-file.yml 
                    """
            }
        }
    }
}
