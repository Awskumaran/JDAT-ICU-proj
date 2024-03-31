pipeline {
  agent any
  stages {
    stage('Compile') {
      steps {
        script{
                def mvnHome = tool name: 'MAVEN_HOME', type: 'maven'
                sh "${mvnHome}/bin/mvn package"
        }
      }
    }
    stage('Building Docker Image') {
      steps{
        script {
          sh "docker build -t kumaran96/cicd-poc-jenkins-ansible:$BUILD_NUMBER ."
        }
      }
    }
    stage('Push Image To Docker Hub') {
      steps{
        script {
          sh "echo $USER"
          sh "docker login -u kumaran96 -p dckr_pat_8r7ctutEVePSfi7dkXrC-m8CeSM"
          sh "docker push kumaran96/cicd-poc-jenkins-ansible:$BUILD_NUMBER"
          }
        }
      }
    }
}

