# syntax=docker/dockerfile:experimental
FROM maven:3-jdk-11 as build
WORKDIR /tmp

copy src /tmp/src
copy pom.xml /tmp/

run --mount=type=cache,id=maven,target=/root/.m2,sharing=shared mvn clean package

from adoptopenjdk/openjdk11:alpine

COPY --from=build /tmp/target/orders.jar /orders.jar

run chmod a+rx ./orders.jar

USER ${SERVICE_USER}

ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT

LABEL org.label-schema.vendor="awraad" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.version="${BUILD_VERSION}" \
  org.label-schema.name="Socks Shop: orders" \
  org.label-schema.description="REST API for orders service" \
  org.label-schema.url="https://github.com/microservices-demo/orders" \
  org.label-schema.vcs-url="github.com:microservices-demo/orders.git" \
  org.label-schema.vcs-ref="${COMMIT}" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/opt/java/openjdk/bin/java","-jar","./orders.jar", "--port=80"]
