pipeline{
    agent any
    tools {
        terraform "terraform-1.9.5"
    }
    stages{
        stage("git checkout"){
            steps{
                git branch: 'main', changelog: false, poll: false, url: "https://github.com/Reddylab36/terraform-test.git"
            }
        }
        stage("terraform init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("terraform apply"){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
