
#!/bin/sh
# Note: written in sh

# USE the trap if you need to also do manual cleanup after the service is stopped,
#     or need to start multiple services in the one container
#trap "echo TRAPed signal" HUP INT QUIT TERM
echo Parameters
echo "$@"

# start service in background here
$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong &
$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong2 &
$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong3

#echo "[hit enter key to exit] or run 'docker stop <container>'"
#read

# stop service and clean up here
#echo "stopping java service(s)"

#echo "exited $0"
