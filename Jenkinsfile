pipeline {
    agent any
    parameters {
      string defaultValue: '', name: 'Enter your Virtual EC2 Resource Name'
    }

    stages {
        stage('initializing'){
            steps{
            sh "terraform init"
            }
        }
        stage('planning'){
            steps{
            sh "terraform plan"
            }
        }
        stage('applying'){
            steps{
                sh returnStatus: true, script: 'terraform apply --auto-approve'       
            }
      }
    }
}
