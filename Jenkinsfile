pipeline {
    agent any

  tools {
    maven 'maven'
    jdk 'Java'
  }

  environment {
       GIT_BRANCH = 'main'
       GIT_URL = 'https://github.com/vinayakakg7/Demo_2023June.git'
  }

  stages {
    stage ("Git Checkout") {
        steps {
            git branch : GIT_BRANCH , url:  GIT_URL
        }
     }

    stage ("test using maven") {
        steps {
            bat 'mvn test'
        }
     }

     stage ("Build using maven") {
        steps {
            bat 'mvn clean install'
        }
     }

     stage ("Static code analysis") {
        steps {
          script {
          withSonarQubeEnv(credentialsId: 'sonar_api') {
              bat 'mvn clean package sonar:sonar'
          }
        }
      }

     }

     stage ("Build Docker Image") {
        steps {
          script {
            bat 'docker build -t vkg -f .'
          }
        }
     }
  }
}