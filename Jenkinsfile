pipeline {
	agent any
	environment {
		    PATH = "/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
	}
	stages {
		stage('Dependencies') {
			steps {
				sh 'npm install'
				}
		}
		stage('Unit tests'){
			steps{
				sh 'npm run unit-test'	 
				}
		}
		stage('Integration tests') {
			when {
				anyOf {
					branch 'develop'
					branch 'main'
					}
				}
			steps {
				sh 'npm run integration-test'
				}
		}
	}
}

