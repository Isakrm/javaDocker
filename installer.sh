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

cd javaDocker

cd database

sudo docker build -t ingresse/local .

sudo docker run -p3306:3306 -d --name ingressedb ingresse/local

sudo apt-get install mysql-client -y

sudo docker exec -it ingressedb /bin/bash'mysql -uingresse -purubu100

'SHOW DATABASES;

USE logs-ingresse;

SHOW TABLES;

DESC logs;'
'


