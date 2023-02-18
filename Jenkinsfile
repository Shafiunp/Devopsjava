pipeline {
  agent any
  stages {
    stage('Hello') {

	agent { label "build-slave-1" }
      steps {
        sh '''
          git --version
        '''
      }
    }
stage('Hello1') {
	agent { label "build-slave-2" }

      steps {
        sh '''
          git --version
        '''
      }
    }
  }

}
