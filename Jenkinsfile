pipeline {
    agent any

  tools {
    maven 'maven'
    jdk 'Java'
  }

  environment {
       GIT_BRANCH = 'main'
       GIT_URL = ''
  }

  stages {
     stage ("Git Checkout") {
        steps {
            git branch : GIT_BRANCH , url:  GIT_URL
        }
     }
  }
}