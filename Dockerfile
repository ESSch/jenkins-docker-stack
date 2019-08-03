FROM visibilityspots/jenkins-docker

LABEL author="Jan Collijs"
ENV TZ=Etc/UTC
USER root

RUN docker --version
RUN url="https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" && \
    curl -L $url -o /usr/bin/docker-compose && \
    chmod a+x /usr/bin/docker-compose && \
    docker-compose --version
RUN base=https://github.com/docker/machine/releases/download/v0.16.0 && \
    curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
    install /tmp/docker-machine /usr/local/bin/docker-machine && \
    docker-machine version;

EXPOSE 8080