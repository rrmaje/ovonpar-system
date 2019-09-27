FROM openjdk:8-jre-alpine

ENV NASSAU_VERSION "0.13.0"

WORKDIR /opt/docker

COPY ./nassau-soupbintcp-gateway.jar /opt/docker

COPY ./etc /opt/docker/etc

COPY ./docker-entrypoint.sh /opt/docker

RUN chmod 733 -R /opt/docker/etc

USER daemon
EXPOSE 5000

EXPOSE 6000

ENTRYPOINT /opt/docker/docker-entrypoint.sh
