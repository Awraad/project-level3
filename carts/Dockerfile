FROM maven:3-jdk-11 as build
WORKDIR /tmp
copy src /tmp/src
copy pom.xml /tmp/
run --mount=type=cache,id=maven,target=/root/.m2,sharing=shared mvn clean package

FROM weaveworksdemos/msd-java:jre-latest
COPY --from=build /tmp/target/carts.jar /carts.jar
RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ARG BUILD_DATE
ARG BUILD_VERSION
ARG COMMIT

LABEL org.label-schema.vendor="awraad" \
  org.label-schema.build-date="${BUILD_DATE}" \
  org.label-schema.version="${BUILD_VERSION}" \
  org.label-schema.name="Socks Shop: Cart" \
  org.label-schema.description="REST API for Cart service" \
  org.label-schema.url="https://github.com/microservices-demo/carts" \
  org.label-schema.vcs-url="github.com:microservices-demo/carts.git" \
  org.label-schema.vcs-ref="${COMMIT}" \
  org.label-schema.schema-version="1.0"

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./carts.jar", "--port=80"]
