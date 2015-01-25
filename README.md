docker-nodejs-mongodb
=====================

Docker container with node.js and MongoDB


Some ways to run:

# DB data in container
sudo docker run --rm=true -t -i -p 8080:8080/tcp nodejsmongodb
# DB data on host
sudo docker run --rm=true -t -i -p 8080:8080/tcp -v /var/lib/mongodb:/var/lib/mongodb nodejsmongodb
# DB data and code on host
sudo docker run --rm=true -t -i -p 8080:8080/tcp -v /var/lib/mongodb:/var/lib/mongodb -v ~/git/wow/:/mnt nodejsmongodb
