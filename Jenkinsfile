pipeline{
    agent any
    stages{
        stage("git checkout"){
            steps{
                git 'https://github.com/ashutoshmuduli/demi.git'
            }
        }
        stage("build"){
            steps{
                sh '/opt/apache-maven-3.8.1/bin/mvn clean install'
            }
        }
        
        stage("creating container on remote server"){
            steps{
                sshagent (credentials: ['devserver']) {
                    sh 'scp -o StrictHostKeyChecking=no target/*.jar root@192.168.1.101:/opt/deploy'
                    
                }
                }
            }
    }
}