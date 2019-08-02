FROM visibilityspots/jenkins-docker
USER root
WORKDIR /root/
RUN docker --version
RUN url="https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" && \
    curl -L $url -o /usr/bin/docker-compose
RUN base=https://github.com/docker/machine/releases/download/v0.16.0 && \
    curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
    install /tmp/docker-machine /usr/local/bin/docker-machine && \
    docker-machine version;

#USER jenkins

# docker-compose up -d --build
# docker-compose exec jenkins bash

EXPOSE 8080