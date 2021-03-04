pipeline{
    agent any
    stages{
        // stage('Build JAR'){
        //     steps{
        //         sh 'cd stage-4/api/terraform-demo/; ./mvnw clean install;'
        //     } 
        // }
        // stage('Build and Push image'){
        //     steps{
        //         sh 'cd stage-4/api/terraform-demo/; docker build -t sb-terraform-demo:1.0 .; docker tag sb-terraform-demo:1.0 <user-name>/<repo-name>:<version>; docker push <user-name>/<repo-name>:<version>; '
        //     }
        // }
        stage("Init"){
            steps{
                sh "terraform init --backend-config=backend/${environment}.txt"
            }
        }
        stage("Validate"){
            steps{
                sh "terraform validate"
            }
        }
        stage("Plan"){
            steps{
                sh "terraform plan --var-file=${environment}.tfavrs"
            }
        }
        stage("Apply"){
            steps{
                sh "terraform ${action} --var-file=${environment}.tfavrs --auto-approve"
            }
        }
    }
}