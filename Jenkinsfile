pipeline {
    agent any
    parameters {
        string(name: 'VM', defaultValue: 'u15_Default', description: 'Name of your Virtual Machine')
    }

    stages {
        stage('Passed Value') {
            steps {
                echo "Hello ${params.defaultValue}"
            }
        }
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
                sh returnStatus: true, script: 'terraform apply --auto-approve -var -instance_name=${params.defaultValue}'
            }
      }
    }
}
