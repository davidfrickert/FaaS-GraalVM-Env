FROM findepi/graalvm:java11-native

RUN sed -i '/^deb http:\/\/security.debian.org\/debian-security stable\/updates main$/s/^/#/' /etc/apt/sources.list && apt-get --allow-releaseinfo-change update \
  && apt-get install -y libfreetype6-dev

RUN mkdir -p /opt/builds

WORKDIR /opt/builds

CMD ["/bin/bash", "-c", "cd project && ./mvnw install"]
