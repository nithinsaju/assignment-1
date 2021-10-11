pipeline {
    agent any
    parameters {
        string(name: 'VMName', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
    }

    stages {
        stage('Passing Parameter') {
            steps {
                echo "Hello ${params.VMName}"
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
                sh returnStatus: true, script: 'terraform apply --auto-approve -var-instance_name='${params.VMName}'' 
            }
      }
    }
}
