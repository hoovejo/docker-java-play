# docker-java-play

Skeleton project with multiple java services listening on different ports. 
Build a skeleton that represents another monolithic application. 
Need to figure out a good way to take one giant code base
and build out (multiple ??) docker containers in an efficient way.

** Gradle commands**
=> ./gradle buildDocker
=> docker run --init --detach --name pingpong -p 8080:8080 -p 8081:8081 -p 8082:8082 poc/pingpong:1.0
=> docker exec -it pingpong ps aux
=> docker top pingpong
=> docker ps

** Maven commands**
=> mvn package dockerfile:build
=> docker run --init --detach --name pingpong -p 8080:8080 -p 8081:8081 -p 8082:8082 poc/pingpong:1.0
=> docker exec -it pingpong ps aux
=> docker top pingpong
=> docker ps

** Check it out
=> curl http://localhost:8080/ping
=> curl http://localhost:8081/ping
=> curl http://localhost:8082/ping

