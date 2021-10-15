FROM findepi/graalvm:java11-native
# RUN apt-get update && apt-get install zip maven -y && rm -rf /var/lib/apt/lists/*
RUN apt-get update \
  && apt-get install -y libfreetype6-dev

RUN mkdir -p /opt/builds

WORKDIR /opt/builds

CMD ["/bin/bash", "-c", "cd project && ./mvnw clean package -X"]
