node {
    docker.image('node:24-alpine').inside {
        stage("Listar archivos") {
            sh "ls -la"
        }

        stage('Check node version (agent node)') {
            sh 'node -v'
        }

        stage('Instalar dependencias') {
            sh 'npm install'
        }

        stage ("Ejecutar tests") {
            sh 'npm test'
        }

        stage ("Mensaje final") {
            echo "Pipeline completed successfully! from branch develop"
        }
    }
}