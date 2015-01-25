# node.js and MongoDB server
#
# VERSION 0.0.1

FROM fedora:rawhide
MAINTAINER Martin Hagstrom <martin@mrhg.se>

# Update
RUN yum update -y
# Install deps
RUN yum install -y nodejs mongodb-server npm make wget unzip mongodb vim curl
RUN npm install node-gyp mongodb

# Server runs on port 8080
EXPOSE 8080/tcp

CMD /usr/bin/mongod --fork -f /etc/mongodb.conf && /bin/bash
