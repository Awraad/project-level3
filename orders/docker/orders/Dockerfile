# syntax=docker/dockerfile:experimental
FROM maven:3-jdk-11 as build
WORKDIR /orders

copy src /tmp/src
copy pom.xml /tmp/
run --mount=type=cache,id=maven,target=/root/.m2,sharing=shared mvn clean package

FROM weaveworksdemos/msd-java:jre-latest
COPY --from=build /orders/target/orders.jar /orders.jar

RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
