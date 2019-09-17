pipeline {

	agent any
	
	environment {
		
		DOCKER_IMAGE_NAME = "jb008/dock-repo"
	}
	
	stages {
	     	stage('Build Docker Image') {
			steps {
				script {
					app = docker.build(DOCKER_IMAGE_NAME)
					}
				}
			}
		
		
		stage('Push Docker Image') {
			steps {
				script {
					docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
					    app.push("${env.BUILD_NUMBER}")
					    app.push("latest")
					}
				}
			}
		}
	
		
	
	}	
}
