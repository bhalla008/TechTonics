pipeline {

	agent any
	
	stages {

	      stage('git checkeout'){
			
			steps {
				git 'https://github.com/bhalla008/TechTonics.git'
			     }
			}
	       stage('compile') {
			
			steps { 
				sh 'mvn compile'
			      }
			}
		stage('unit test'){
			steps {
				sh 'mvn clean test'
			      }	
			}

		stage('build'){
			steps {
				sh 'mvn clean package'
			      }
			}
		}
	}	
