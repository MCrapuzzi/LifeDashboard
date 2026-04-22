node {
    checkout scm
    // def customImage = docker.build("my-image:${env.BUILD_ID}")
    sh 'cat ./dockerfile' 
    // customImage.inside{
    //     sh 'make test'
    // }
}