FROM maven:3-jdk-11 as build

WORKDIR /tmp
copy src /tmp/src
copy pom.xml /tmp/
run mvn clean package

FROM adoptopenjdk/openjdk11:alpine

COPY --from=build /tmp/target/queue-master.jar /queue-master.jar
RUN chmod a+rw ./queue-master.jar
USER ${SERVICE_USER}

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./queue-master.jar", "--port=80"]
