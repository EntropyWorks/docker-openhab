## This container still not ready for used , still trying to learn how this application work .. , if you have any knowledge about OpenHAB 2 and want to help me , please test it and let me know if something is missing on it or not working right.

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

To run container use the command below:

    $ docker run -d -p xxxx:8080 quantumobject/docker-openhab

Check port and point your browser to http://[ip]:xxxx/  to access and initially configure your OpenHAB 2.


## More Info

About OpenHAB 2 [www.openhab.org][1]

To help improve this container [quantumobject/docker-openhab][5]

[1]:http://www.openhab.org/
[2]:https://www.docker.com
[3]:https://github.com/openhab/openhab2
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-openhab
