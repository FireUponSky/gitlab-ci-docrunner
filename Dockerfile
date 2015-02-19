FROM sameersbn/gitlab-ci-runner:latest
MAINTAINER hugo@188.com

RUN apt-get update && \
    apt-install -y fontconfig && \
    rm -rf /var/lib/apt/lists/*

ADD apt-source/ /root/apt-source/
RUN cat /root/apt-source/sources.list > /etc/apt/sources.list
