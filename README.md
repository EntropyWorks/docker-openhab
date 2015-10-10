# docker-openhab
Docker container for [OpenHAB 2][3]

"The next-generation open Home Automation Bus (openHAB):a vendor and technology agnostic open source automation software for your home.Build your smart home in no time!"

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ wget -qO- https://get.docker.com/ | sh

 To install docker in other operating systems check [docker online documentation][4]
 
## Usage

## If you need a MySQL database you can link container :

    $ docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword  -e MYSQL_DATABASE=OpenHAB \
    -e MYSQL_USER=openhab -e MYSQL_PASSWORD=openhabpasswd -d mysql

in case you want to used pre-existing mysql container , you can add the new database by connecting to it with _docker exec -it some-mysql bash_ and manual adding OpenHAB database or you can link and used quantumobject/docker-mywebsql to create database OpenHAB and user openhab plus need to grant all permision of this user to the OpenHAB database.  
  
Them link to OpenHAB container:

    $ docker run -d -p xxxx:8080 --link some-mysql:db quantumobject/docker-openhab

where when been ask for database need to replace localhost for db.

Check port and point your browser to http://[ip]:xxxx/  to access and initially configure your OpenHAB 2.

To access the container from the server that the container is running :

    $ docker exec -it container_id /bin/bash


## More Info

About OpenHAB 2 [www.openhab.org][1]

To help improve this container [quantumobject/docker-openhab][5]

[1]:http://www.openhab.org/
[2]:https://www.docker.com
[3]:https://github.com/openhab/openhab2
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-openhab
