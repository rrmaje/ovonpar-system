FROM openjdk:jre
WORKDIR /opt/docker
COPY ./parity-system.jar /opt/docker
COPY ./etc /opt/docker/etc
COPY ./parity-system.sh /opt/docker
USER daemon
EXPOSE 5000
EXPOSE 5001
EXPOSE 6000
EXPOSE 6001
EXPOSE 4000
ENTRYPOINT /opt/docker/parity-system.sh

