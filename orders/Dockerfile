FROM maven as build
copy . /orders
WORKDIR /orders
RUN mvn -DskipTests package

FROM weaveworksdemos/msd-java:jre-latest

COPY --from=build /orders/target/*.jar ./app.jar

RUN	chown -R ${SERVICE_USER}:${SERVICE_GROUP} ./app.jar

USER ${SERVICE_USER}

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
