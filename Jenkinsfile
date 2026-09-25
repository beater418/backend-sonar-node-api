def buildAndTest(){
    sh 'npm install'
    sh 'npm test'
}
node {
    try {
        docker.image('node:24-alpine').inside {
            stage("Listar archivos") {
                sh "ls -la"
            }

            stage('Check node version (agent node)') {
                sh 'node -v'
            }

            stage('Build and test') {
                buildAndTest()
            }

            //stage ("Ejecutar tests") {
            //    sh 'npm test'
            //}

            if(env.BRANCH_NAME == 'develop'){
                stage("Deploy to develop"){
                    echo "Running on the develop branch"
                }
            }

            stage ("Mensaje final") {
                echo "Pipeline completed successfully! from branch develop"
            }
        }
    }
    catch(Exception e){
        echo "Pipeline failed: ${e.message}"
        throw e
    } finally {
        echo "Pipeline Finished."
    }
}
