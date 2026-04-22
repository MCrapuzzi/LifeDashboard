node {
    checkout scm
    def customImage = docker.build("my-image:${env.BUILD_ID}")
    sh 'ls -la' 
    // customImage.inside{
    //     sh 'make test'
    // }
}