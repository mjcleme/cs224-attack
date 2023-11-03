# cs224-attack

Docker cs224
gcc 7.5.0 and Ubuntu 18.04 Bionic Beaver
apt-get update
apt-get install vim

deb [arch=amd64] http://archive.ubuntu.com/ubuntu focal main universe
to /etc/apt/sources.list
apt update
apt-get update
apt-get install g++-7

To find version of linux
cat /etc/os-release

docker ps -a
docker cp attacklab.tar 85a43e128383:/tmp

Given a Dockerfile build an image
docker build --tag cs224 .

docker images
Shows the images

Create a container and open a sh in it
docker run --name cs224 -p 5555:80 -it ubuntu18 sh
docker run —d name cs224  -p 127.0.0.1:5555:80 -p 127.0.0.1:5556:15513 -p 127.0.0.1:5557:15514 cs224 
docker run --name cs224 -it -p 5555:80 cs224 bash
cpan install Date/Parse.pm
apt-get install psmisc

service nginx start 

netstat -tulpn | grep LISTEN
netstat -an|grep LISTEN

docker run --name debug -it -p 6666:80 cs224 bash

ip addr show docker0


Try running the simplest NGINX container with this:
docker run -d -p 8081:80 nginx:alpine
And then verify you can get to the homepage:
curl http://localhost:8081
If that's working then I'd look at how you're running your image.
