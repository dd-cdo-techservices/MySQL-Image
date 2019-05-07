pipeline {
  
  agent any  
  
  stages {
    stage('checkout') {
      steps {
        checkout scm
  	    }
    	}
    
 
    stage('Packer version') {
      steps {
        sh '/usr/bin/packer --version'
      }
    }
	
    stage('MySQL Image Build') {
      steps {
        sh '/usr/bin/packer build image.json'
	      cleanWs()
      }
    }
  }
}
