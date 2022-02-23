pipeline {
    agent any

    stages {
        stage('Build Application') {
            steps {
                      sh 'sudo docker build -t dattatrayd/user-management-jenkins:latest .'
            }
        }
        stage('Test') {
            steps {
           withCredentials([string(credentialsId: 'dockerHubPassword', variable: 'dockerHubPassword')]) 
         {
       sh "sudo docker login -u dattatrayd -p ${dockerHubPassword}"
	       }
    	sh 'sudo docker push dattatrayd/user-management-jenkins:latest'
            }
        }
        
    }
}
