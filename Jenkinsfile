pipeline {
  agent any
  stages {
    stage('git-stage') {
      steps {
        sh '''
          git -version
        '''
      }
    }
    stage('maven-stage') {
      steps {
        sh '''
          mvn --version
          mvn clean package
        '''
      }
    }
  }
}