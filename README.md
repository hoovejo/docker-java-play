# docker-java-play

Skeleton project with multiple java services listening on different ports. 
Build a skeleton that represents another monolithic application. 
Need to figure out a good way to take one giant code base
and build out (multiple ??) docker containers in an efficient way.

** Gradle commands**
=> ./gradle buildDocker
=> docker run --init --detach --name pingpong -p 8080:8080 -p 8081:8081 -p 8082:8082 poc/pingpong:1.0
=> docker ps

** Maven commands**
=> mvn package dockerfile:build
=> docker run --init --detach --name pingpong -p 8080:8080 -p 8081:8081 -p 8082:8082 demoregistry.azurecr.io/pingpong:latest
=> docker ps

** Check it out
=> http://localhost:8080/ping
=> http://localhost:8081/ping
=> http://localhost:8082/ping

