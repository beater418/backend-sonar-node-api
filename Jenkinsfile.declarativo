pipeline {
    agent {
        docker {
            image 'node:24-alpine'
        }
    }

    stages {
        stage("Listar archivos") {
            steps {
                sh "ls -la"
            }
        }

        stage('Check node version (agent node)') {
            
            steps {
                sh 'node -v'
            }
        }

        stage('Instalar dependencias') {
            
            steps {
                sh 'npm install'
            }
        }

        stage ("Ejecutar tests") {
            steps {
                sh 'npm test'
            }
        }

        stage ("Mensaje final") {
            steps {
              echo "Pipeline completed successfully! from branch develop"
            }
        }
    }
}