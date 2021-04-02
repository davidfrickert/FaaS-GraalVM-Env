FROM findepi/graalvm:java11-native

RUN apt-get install zip -y && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /opt/builds

WORKDIR /opt/builds

CMD ["/bin/bash", "-c", "cd project && ./build.sh"]
