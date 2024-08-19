docker/cpntainer are important for few reasons;_

1. Kubernates/ container orchestration
2. Running process in isolated environments.
3. starting projects/auxilary services only.

# containerization
containers are a way to package and distribute software applications in a way that makes them easy to deploy and run consistently across diffrenet environments. They allow you to package an application, along with all its dependencies and liabraries, into a single unit that can be run on any machine with a container runtime such as docker.

# why containers.

-> Everyone has differnet operating system.
->steps to run a project can vary based on os.
-> extremly harder to kepp track of dependencies as projexts grows.

# Benefits of container.

-> let you describe your configuration in a single file.
-> can run in isloated environments.
-> makes local setup of os projects a breeze.
-> makes installing auxilary services/dbs easy.

-> docker isn't the only way to create containers.


# history of docker
-> docker is a YC backed company, stsrted in ~ 2014
They envasioned a world where containers would become mainstram and people would deploy their application unsing them.
-> that is mostly true today.
-> most project you open on github would have docker files in them.

# inside docker
Terminal
Docker engine -> It is an open source contenarization technology that allows developers to package application into containers.

containers are standarised executable components combining application source code with the operating system liabraries and dependencies required to run that code in any encironmemt.


Docker registery -> 

docker cli --> the commenad line interfacce you to talk to docker engine.



# images vs containers

->(image docker) a docker image is a lightweight, standalone, excecutable package that includes everything needed to run a piece of software, includeing the code, a rntime, liabraries, environment, variable and config files.

-> docker conatiner
A container is a running instances of an image. It encapsulates the application or service and it's depenencies, running in an isolate envirinment.

# port mapping

docker run -d -p 27018(macmachine):27017(conatainer)  mongo

# common docker commands

docker images
docker ps - shows all the conatiners
docker run
docker build
docker kill
docker rmi -remove image


# docker file
if tou want to create an image from your own code, that you can push to dockerhub you need to create a docker file in your application.

-> a docker file is a text document that contains all the commands a user coould call on the command line to create an image.

# how to write adocker

A docker file has 2 parts.
1. base image
2. Bunch of commands that you run on the base image (to instll dependencies like node.js)




