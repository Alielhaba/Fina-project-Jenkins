pipeline {
    agent { label 'slave' }
    stages {
        stage('build') {
            steps {
            	withCredentials([usernamePassword(credentialsId: 'docker-cred', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                    sh   """
                        docker login -u $USERNAME -p $PASSWORD
                        docker build -t ali3elhabal/final-pro:latest .
                        docker push ali3elhabal/final-pro:latest
                    """
                 }
            }
        }
        stage('deploy') {
            steps {
                    sh    """
                        kubectl apply -f deployment-file 
                    """
            }
        }
    }
}
