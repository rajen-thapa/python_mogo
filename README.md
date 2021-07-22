# Hello, World (Python/Flask)

This is a Python/Flask template for building a microservice in  Docker.

# Repository structure

The main files in this repository are:

* `Dockerfile` specifies how the application is built and packaged
* `Jekinsfile` that contains the pipeline script to be used in jenkins for build , push and run the python container.
* `app.py` is the actual Python/Flask application that also includes connection with remote mongodb.
* `requirements.txt` that contiains all the python dependencies

# Steps involved in containerizing the python application
 1. Used app.py that displays simple "helloworld" text on browser and also connects to mongodb and add some entries into it.
 2. Used jenkins file as a pipeline script.
 3. Used Dockerfile that is used for building python application docker image.
 4. Setup a jenkins in standalone mode with all the necessary plugins for Docker and GIT as well credential managed for dokerhub.
 5. Created a pipleline in Jenkins using Jenkinsfile from GIT that uses Dockefile for building image, push the built image to docker repository and runs the container into the  local system.
 6.  Webhook has been setup in git repository but automatic trigger of pipeline job is not feasible since Jenkins server is not hosted publicly i.e github cant recognize jenkins server to trigger the build as of now.
 7.  Additionally python image in dockerhub will be functional only after mongodB is reachbale priavtely.
