pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git 'https://github.com/HrushikeshS/Python_Code.git'
            }
        }
        stage('tf init') {
            steps {
                sh 'terraform init'
            }
        }
        
       stage('tf plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('tf apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('tf destroy') {
            steps {
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}
