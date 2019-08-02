#FROM jenkins/jenkins:lts
# todo: install only docker-cli, composer,
#FROM ubuntucore/jenkins-ubuntu
FROM visibilityspots/jenkins-docker
# todo: don't use jenkins/jenkins:lts, use ubuntu

#RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && docker version && \
#    url="https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" && \
#    sudo curl -L $url -o /usr/local/bin/docker-compose && \
#    base=https://github.com/docker/machine/releases/download/v0.16.0 && \
#    curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
#    sudo install /tmp/docker-machine /usr/local/bin/docker-machine && \
#    docker-machine version;

#RUN curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh && docker version

#RUN apt install -y apt-transport-https ca-certificates curl software-properties-common
#apt-get update
#RUN  echo 'Debug::Acquire::https "true";' >> /etc/apt/apt.conf.d
#sudo apt-get update && \
#
#apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
#curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
#apt-key fingerprint 0EBFCD88
#add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/debian \
#   $(lsb_release -cs) \
#   stable"
#apt-get update
#apt-get install docker-ce docker-ce-cli containerd.io
#apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io


#wget https://download.docker.com/linux/debian/dists/stretch/pool/stable/amd64/docker-ce_19.03
#.1~3-0~debian-stretch_amd64.deb -o docker-ce.deb
# dpkg -i docker-ce_19.03.1~3-0~debian-stretch_amd64.deb
#url=https://download.docker.com/linux/debian/dists/stretch/pool/stable/amd64/
#wget ${url}docker-ce-cli_19.03.1~3-0~debian-stretch_amd64.deb
#dpkg -i docker-ce-cli_19.03.1~3-0~debian-stretch_amd64.deb
#wget ${url}containerd.io_1.2.6-3_amd64.deb
#dpkg -i containerd.io_1.2.6-3_amd64.deb
#apt-get update
#RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io && \
#    curl -fsSL https://get.docker.com -o get-docker.sh && \
#    sh get-docker.sh && \
USER root
#RUN apt-get update && apt-get install -y docker-ce-cli && \
#RUN url=https://download.docker.com/linux/debian/dists/stretch/pool/stable/amd64/ && \
#    wget ${url}docker-ce-cli_19.03.1~3-0~debian-stretch_amd64.deb && \
WORKDIR /root/
RUN url="https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" && \
    curl -L $url -o /usr/local/bin/docker-compose
#    && \
#    base=https://github.com/docker/machine/releases/download/v0.16.0 && \
#    curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
#    install /tmp/docker-machine /usr/local/bin/docker-machine && \
#    docker --version && docker-compose --version && vdocker-machine version;

#RUN sudo apt-get update && \
#    sudo apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
#    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && \


#USER jenkins

# docker-compose up -d --build
# docker-compose exec jenkins bash

EXPOSE 8080