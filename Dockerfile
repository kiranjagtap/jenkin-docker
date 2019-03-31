#
# Super simple example of a Dockerfile
#
FROM maven:3.5.0-jdk-8
MAINTAINER Kiran Jagtap "karan27288@gmail.com"

ADD target/*.jar /tmp/app.jar

ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /tmp/app.jar
