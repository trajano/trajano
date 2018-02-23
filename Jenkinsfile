pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                dockerNode(image: 'maven:3.5.3-jdk-8', sideContainers: ['selenium/standalone-firefox']) {
                    checkout scm
                    sh 'mvn -B clean test'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
