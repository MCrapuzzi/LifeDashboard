// node {
//     checkout scm

//     docker.withRegistry('https://index.docker.io/v1/','docker-hub-credentials') {

//         def customImage = docker.build("michelecrapuzzi/php_service:${env.BUILD_ID}")

//         /* Push the container to the custom Registry */
//         customImage.push()
//     }

// }

node {
    def imageTag = "${env.BUILD_ID}"
    def image_name
    def image_build
    stage('Checkout') {
        checkout scm
    }

    stage('Build') {
        withCredentials([
            usernamePassword(
                credentialsId: 'docker-hub-credentials',
                usernameVariable: 'DOCKER_USERNAME',
                passwordVariable: 'DOCKER_PASSWORD')
        ])
        {
            image_name = "${DOCKER_USERNAME}/php_service:${imageTag}"
            image_build = docker.build(image_name)
        }
    }

    // stage('Test'){
    //     image_build.inside {
    //         sh 'php -l index.php'
    //     }
    // }

    stage('Push') {
    withCredentials([
        usernamePassword(
            credentialsId: 'docker-hub-credentials',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
        )
    ]) {
        docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
            customImage.push("${image_build}")
        }
    }
}
}