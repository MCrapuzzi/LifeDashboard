node {
    docker.withRegistry('https://host.docker.internal:5000', 'localhost-container-registry') {

        def customImage = docker.build("my-image:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
    }

}