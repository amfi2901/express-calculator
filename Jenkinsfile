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
		stage('Delivery') {
			when {
				branch 'main'
				}
			steps {
				script {
					docker.withRegistry('https://registry.hub.docker.com', 'dockercred'){
						def image = docker.build("amfi2901/express-calculator:${env.BUILD_ID}")
						image.push()
						}
					}
				}
		}
	}
}

