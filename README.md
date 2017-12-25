# docker-java-play

Skeleton project with multiple java services listening on different ports. 
Build a skeleton that represents another monolithic application. 
Need to figure out a good way to take one giant code base
and build out (multiple ??) docker containers in an efficient way.

=> ./gradle buildDocker
=> docker run --name pingpong -p 8080:8080 -p 8081:8081 -p 8082:8082 poc/pingpong:latest
=> http://localhost:8080/ping
