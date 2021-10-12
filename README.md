*Make sure Docker daemon is running

To Build (this creates the image by executing the followng command from the directory that contains the Docker file):
  $ docker build -t app .

To Run the container (Creates and runs a container from the new image, and exposes a port 8080 to port 8080 on the host):
  $ docker run --publish 8080:8080 app

Test the connection: 
  $ curl http://localhost:8080/

















Build an image from the Dockerfile in the
current directory and tag the image
docker build -t myimage:1.0 .
List all images that are locally stored with
the Docker Engine
docker image ls
Delete an image from the local image store
docker image rm alpine:3.4

Run a container from the Alpine version 3.9
image, name the running container
“web” and expose port 5000 externally,
mapped to port 80 inside the container.
docker container run --name web -p
5000:80 alpine:3.9
Stop a running container through SIGTERM
docker container stop web
Stop a running container through SIGKILL
docker container kill web
List the networks
docker network ls
Run
List the running containers (add --all to
include stopped containers)
docker container ls
Delete all running and stopped containers
docker container rm -f $(docker ps -aq)
Print the last 100
lines of a container’s logs
docker container
logs --tail 100 web


