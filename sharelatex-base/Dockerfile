FROM ubuntu:latest

#node and mongo

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6; \
			echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list


RUN apt-get update && apt-get install -y git-core nodejs npm mongodb-org iproute2 iputils-ping 
RUN ln -s "$(which nodejs)" /usr/bin/node ;\
    npm install -g grunt-cli ; \
    npm install -g nodemon

VOLUME ["/var/lib/mongodb/"]
