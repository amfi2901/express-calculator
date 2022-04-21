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
		stage('Tests') {
			steps {
				sh 'npm run unit-test'
				sh 'npm run integration-test'
				}
		}
	}
}

