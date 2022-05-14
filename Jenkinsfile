pipeline {
    agent any 
    tools { 
      maven 'M2_HOME'
    }
    environment {
       registry = "derickch/opona/mino_lik"
       registryCredential = 'dockerid'
    }
    stages {
        stage('Build') { 
            steps {
               sh 'mvn clean'
               sh 'mvn install'
               sh 'mvn package'
            }
        }
        stage('Test') { 
            steps {
                echo "hello test" 
                sh 'mvn test'
            }
        }
        stage('Deploy') { 
            steps {
              script {
              dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
        }
    }
}
