FROM openjdk:7
MAINTAINER Maarten Balliauw <maarten.balliauw@jetbrains.com>

ENV YOUTRACK_VERSION=7.0.28450
RUN wget http://download-cf.jetbrains.com/charisma/youtrack-$YOUTRACK_VERSION.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-XX:MaxPermSize=250m", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
