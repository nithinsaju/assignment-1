pipeline {
    agent any
    parameters {
        string(name: 'Name_VM', defaultValue: 'Mr EC2_VM', description: '')
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
                sh returnStatus: true, script: 'terraform apply --auto-approve -var instance_name="${params.Name_VM}"' 
            }
      }
    }
}
