pipeline{
    agent any
    // environment {
    //     DOCKERHUB_CREDENTIALS = credentials('DockerHub')
    // }
    stages {
        stage('Cloning Git') {
            steps {
                echo 'Cloning Git'
		git url: 'https://github.com/ashna-baig/devops-assignment.git', branch: 'main', credentialsId: 'github_creds'
    
            }
	    }
        
    //     stage('Login') {
    //         steps {
    //             sh 'docker login -u ashnabaig -p ashikhan14'
    //             echo 'Logging in'
    //         }
    //     }
    //     stage("build") {
    //         steps {
    //             echo "Building Docker Image"
    //             sh 'docker build -t ashna-baig/devops-assignment:latest .'
    //         }
    //     }
    //     stage('Push') {
    //         steps {
                
    //             sh 'docker push ashnabaig/docker-assignment:latest'
    //             echo 'Pushing to DockerHub'
    //         }
    // } 
    }
}

