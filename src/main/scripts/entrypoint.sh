#!/bin/bash

echo Running mainLaunch script
echo Parameters
echo "$@"

$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong &
$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong2 &
$JAVA_HOME/bin/java -classpath /app.jar com.sample.PingPong3
