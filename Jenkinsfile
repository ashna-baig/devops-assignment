pipeline{
    agent any

    stages {
        stage('Cloning Git') {
            steps {
                echo 'Cloning Git'
		git url: 'https://github.com/ashna-baig/devops-assignment.git', branch: 'main', credentialsId: 'github_creds'
    
           }
	    }
        
        
        stage("build") {
            steps {
                echo "Building Docker Image"
                sh 'docker build -t ashna-baig/devops-assignment:latest .'
            }
        }
        
    }
}
