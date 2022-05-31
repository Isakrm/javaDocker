#!/bin/bash

sudo apt update && sudo apt upgrade -y

clear

java -version

if [ $? -eq 0 ]
	then
		echo ""
	else
		sudo add-apt-repository ppa:webupd8team/java -y
		clear
		sudo apt update -y
		clear
		sudo apt install default-jre ; apt install openjdk-11-jre-headless; -y
		clear
fi

clear

which docker

if [ $? -eq 0 ]
	then
		echo ""
	else
		sudo apt-get install docker.io -y
		clear
		sudo docker pull mysql:5.7
		clear
fi

sudo systemctl start docker

sudo systemctl enable docker

sudo docker stop ingressedb

sudo docker rm ingressedb

sudo docker rmi ingresse/local

sudo docker stop ingresseapp

sudo docker rm ingresseapp

sudo docker rmi ingresse/app

sudo docker network rm ingresse/network

sudo docker network create ingresse/network

cd javaDocker

cd database

sudo docker build -t ingresse/local .

cd ..

cd app

sudo chmod 777 javaDocker.jar

sudo docker build -t ingresse/app .

cd ..

sudo docker run -p3306:3306 --net=ingresse/network -d --name ingressedb ingresse/local

sudo apt-get install mysql-client -y

echo "usuario ingresse senha urubu100, usuario root senha urubu100"

#sudo docker run --net=ingresse/network --name ingresse ingresse/app

sudo docker run --network ingresse/network --link ingressedb --name ingresse --pid=host -it ingresse/app 

#Em caso de acesso manual ao banco utilizar:
#sudo docker exec -it ingressedb /bin/bash



