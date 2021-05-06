node{
    def app

    stage('Clone'){
        checkout scm
    }

    stage('Build image'){
        app = docker.build("reda/nginx")
    }

    stage('Run image'){
        docker.image('reda/nginx').withRun('-p 80:80'){ c ->
            sh 'docker ps'
            sh 'curl localhost'
        }
    }
}